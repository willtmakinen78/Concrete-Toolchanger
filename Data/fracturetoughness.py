import numpy as np
import pandas as pd
from matplotlib import pyplot as plt
from scipy.signal import find_peaks

# define class where each object holds all the data for a fracture toughness test
class FractureToughness:
    
    def __init__(self, path, S, W, B, a0, cmp=1, E=22.5e3, calc_E=True, start_line=6, multi=False):
        
        self.S = S
        self.W = W
        self.B = B
        self.B_N = B
        self.a0 = a0
        self.cmp = cmp
        self._calc_E = calc_E
        self.E = E
        self.m = self.E
        self._multi = multi
        self.plottable_arrays = {}
        self._start_line = start_line
        self._analysis_done = False
        
        # define all variables to be filled in later
        self.P_max = None
        self.pl_index = None
        self.time_pl = None
        self.crosshead_pl = None
        self.extenso_pl = None
        self.load_pl = None
        self.crosshead_linearized = None
        self.load_linearized = None
        self.K_ic = None
        self.J_el = None
        self.n_pl = None
        self.J_pl = None
        self.a_crosshead = None
        self.a_CMOD = None
        self.K_jc = None
        self.K_jc_overall = None
        self.MOR = None
        self.K_jc_offset = None
        self.K_jc_overall_offset = None
        self.K_ic_MOR = None
        self.K_jc_MOR = None
        self.K_jc_overall_MOR = None
        
        # cement-mass-normalized values
        self.load_normalized = None
        self.load_pl_normalized = None
        self.load_linearized_normalized = None
        self.K_ic_normalized = None
        self.K_jc_normalized = None
        self.K_jc_overall_normalized = None
        self.K_jc_offset_normalized = None
        self.K_jc_overall_offset_normalized = None
        
        # read data
        self.data = pd.read_csv(path, skiprows=self._start_line)
        self.data = self.data.drop([0])
        
        # get relevant columns and preprocess
        self.time = self.data.loc[:, 'Time '].to_numpy(dtype=np.double)
        self.crosshead = self.data.loc[:, 'Crosshead '].to_numpy(dtype=np.double)
        self.extenso = self.data.loc[:, 'Extensometer '].to_numpy(dtype=np.double)
        self.load = self.data.loc[:, 'Load '].to_numpy(dtype=np.double)
        self.preprocess()
        
    def preprocess(self):
        self.crosshead = abs(self.crosshead)
        self.load = abs(self.load)

        min_extenso = np.min(self.extenso)
        if (min_extenso < 0):
            self.extenso = self.extenso + abs(min_extenso)
        self.extenso = abs(self.extenso)
        
        
    # show peak values
    def display_peaks(self):
        peaks, _ = find_peaks(self.load, width=10)

        print(peaks)

        plt.plot(self.crosshead, self.load)
        plt.plot(self.crosshead[peaks], self.load[peaks], 'x')
        plt.show()



    def do_analysis(self, pl_index, stop_index=None):
        
        if (self._analysis_done == True): return
        
        if (stop_index is not None and stop_index < pl_index):
            raise Exception("stop_index must be greater than pl_index")

        # set peak index and find max load
        self.pl_index = pl_index
        self.P_max = np.max(self.load)

        # make post-peak arrays
        self.crop_arrays(stop_index=stop_index)

        # once peak is found, calculate E using slope (or not)
        if (self._calc_E == True):
            self.E = self.get_E_reg()

        # after E is found, we can linearize the load pre-peak using the calculated slope
        self.crosshead_linearized, self.load_linearized = self.linearize_load(self._calc_E)

        self.plottable_arrays['crosshead_linearized'] = self.crosshead_linearized
        self.plottable_arrays['load_linearized'] = self.load_linearized

        # calculate K_ic for pre-peak behavior
        self.K_ic = self.get_K_ic()

        # get J_el to also characterize pre-peak behavior:
        self.J_el = self.get_J_el()

        # find J_pl array
        self.n_pl = self.load_pl.shape[0]
        self.J_pl = self.get_J_pl()
        self.plottable_arrays['J_pl'] = self.J_pl

        # find cracklength using crosshead method from Bouville et al and using CMOD from E399
        self.a_crosshead = self.get_a_crosshead()
        self.a_CMOD = self.get_a_CMOD()
        self.plottable_arrays['a_crosshead'] = self.a_crosshead
        self.plottable_arrays['a_CMOD'] = self.a_CMOD

        #  put J_el and J_pl together to calculate K_jc
        self.K_jc, self.K_jc_overall = self.get_K_jc()
        self.K_jc_offset = self.K_jc - self.K_ic
        self.K_jc_overall_offset = self.K_jc_overall - self.K_ic
        self.plottable_arrays['K_jc'] = self.K_jc
        self.plottable_arrays['K_jc_offset'] = self.K_jc_offset
        
        # normalize with respect to MOR
        self.MOR_normalization()
        
        # normalize all values with cement mass percent
        self.normalize()
        
        
        self._analysis_done = True

    
    def crop_arrays(self, stop_index=None):
        
        # find proper stop point
        end = None
        if (self._multi == True): end = stop_index - self._start_line
        else:
            # stop at 20% of peak load for non multi-material samples
            load_thresh = 0.2 * self.P_max
            indices_sub_thresh = np.where(self.load[self.pl_index:] <= load_thresh)[0]
            end = indices_sub_thresh[0] + self.pl_index
        
        
        # start cropping
        self.time = self.time[0:end]
        self.crosshead = self.crosshead[0:end]
        self.extenso = self.extenso[0:end]
        self.load = self.load[0:end]
        
        # add to plotting dictionary
        self.plottable_arrays['time'] = self.time
        self.plottable_arrays['crosshead'] = self.crosshead
        self.plottable_arrays['extenso'] = self.extenso
        self.plottable_arrays['load'] = self.load
        
        # post-peak arrays
        self.time_pl = self.time[self.pl_index:]
        self.crosshead_pl = self.crosshead[self.pl_index:]
        self.extenso_pl = self.extenso[self.pl_index:]
        self.load_pl = self.load[self.pl_index:]
        
        # add to plotting dictionary
        self.plottable_arrays['time_pl'] = self.time_pl
        self.plottable_arrays['crosshead_pl'] = self.crosshead_pl
        self.plottable_arrays['extenso_pl'] = self.extenso_pl
        self.plottable_arrays['load_pl'] = self.load_pl
        
        
    def get_K_ic(self):
        
        a_W = self.a0/self.W
        f_aW = 3*np.sqrt(a_W) * (1.99 - a_W*(1-a_W)*(2.15-3.93*a_W+2.7*a_W**2)) / (2*(1+2*a_W)*np.power(1-a_W, 1.5))
        
        return (self.P_max*self.S/(np.sqrt(self.B*self.B_N)*np.power(self.W, 1.5))) * f_aW
    
    def get_J_el(self):
        return self.K_ic**2 / self.E
        
    def get_E_reg(self):
        #  find slope of linear load-displacement region
        num_reg_points = int(self.pl_index / 10)
        crosshead_reg = self.crosshead[self.pl_index-num_reg_points:self.pl_index]
        load_reg = self.load[self.pl_index-num_reg_points:self.pl_index]
        A = np.vstack([crosshead_reg, np.ones(len(crosshead_reg))]).T
        self.m, _ = np.linalg.lstsq(A, load_reg, rcond=None)[0]
        
        # use to calculate E
        return (self.S**3 * self.m) / (4*self.B*self.W**3)

        # slope was returning weird values, so use MOR instead
#         print(3*self.P_max*self.S / (2*self.B*self.W**2))
#         return 3*self.P_max*self.S / (2*self.B*self.W**2)
    
    def linearize_load(self, calc_E):
        # find slope first
#         if (calc_E == False):
        num_reg_points = int(self.pl_index / 10)
        crosshead_reg = self.crosshead[self.pl_index-num_reg_points:self.pl_index]
        load_reg = self.load[self.pl_index-num_reg_points:self.pl_index]
        A = np.vstack([crosshead_reg, np.ones(len(crosshead_reg))]).T
        self.m, _ = np.linalg.lstsq(A, load_reg, rcond=None)[0]
            
        crosshead_peak = self.crosshead[self.pl_index]
        load_peak = self.load[self.pl_index]

        # generate new data values where lead-up to peak is linearized
        crosshead_x_int = crosshead_peak - (load_peak/self.m)

        crosshead_peak = self.crosshead[self.pl_index]
        crosshead_el = np.linspace(0, crosshead_peak-crosshead_x_int, num=self.pl_index)
        load_el = self.m * np.copy(crosshead_el)
        
        # concatenate to post-peak data
        crosshead_linearized = np.concatenate((crosshead_el, self.crosshead_pl-crosshead_x_int))
        load_linearized = np.concatenate((load_el, self.load_pl))

        return np.copy(crosshead_linearized), np.copy(load_linearized)
        
    
    def get_J_pl(self):
        # find trapezoidal sum under load-displacement curve
        A_pl = np.zeros(self.n_pl)
        
        A_pl[0] = 0.5*(self.load[self.pl_index]+self.load[self.pl_index-1]) * \
                      (self.crosshead[self.pl_index]-self.crosshead[self.pl_index-1])
        
        for i in range(1, self.n_pl):
            A_pl[i] = A_pl[i-1] + 0.5*(self.load_pl[i]+self.load_pl[i-1]) * (self.crosshead[i]-self.crosshead[i-1])

        return 1.9*A_pl/(self.B*(self.W-self.a0))
    
    def get_a_crosshead(self):
        C = np.divide(self.crosshead_pl, self.load_pl)

        a = np.zeros(self.n_pl)

        a[0] = self.a0
        for i in range(1, self.n_pl):
            a[i] = a[i-1] + 0.5*(self.W-a[i-1])*((C[i]-C[i-1])/C[i])
        
        # return and subtract a0 to get delta
        return a - self.a0
    
    def get_a_CMOD(self):
        B_e = self.B-((self.B-self.B_N)**2)/self.B

        U = 1/(1+np.sqrt((self.E*B_e*self.extenso_pl*1e1/(self.load_pl+1e-50))) * 4*self.W/self.S)

        # a = (a/W)*W
        a = self.W*(1 - 3.950*U + 2.982*np.power(U, 2) - 3.214*np.power(U, 3) + 5.516*np.power(U, 4) - 113.031*np.power(U, 5))

        offset = abs(a[0] - self.a0)
        if (a[0] < self.a0): a = a + offset
        else: a = a - offset
            
        # return and subtract a0 to get delta
        return a - self.a0
    
    def get_K_jc(self):
        K_jc = np.sqrt((self.J_el+self.J_pl)*self.E)
        
        K_jc_overall = 0
        
        if (self._multi == True):
            K_jc_overall = np.max(K_jc)
        else:
            a_thresh = 0.2 * (self.W-self.a0)
            indices_sup_thresh = np.where(self.a_CMOD >= a_thresh)[0]
            end_index = indices_sup_thresh[0]
            K_jc_overall = K_jc[end_index]
        
        
        return K_jc, K_jc_overall
        
    
    def MOR_normalization(self):
        self.MOR = 3*self.P_max*self.S / (2*self.B*self.W**2)
        
        self.K_ic_MOR = self.K_ic / self.MOR
        self.K_jc_MOR = self.K_jc / self.MOR
        self.K_jc_overall_MOR = self.K_jc_overall / self.MOR
        
        self.plottable_arrays['K_jc_MOR'] = self.K_jc_MOR
        
    def normalize(self):
        self.load_normalized = self.load / self.cmp
        self.load_pl_normalized = self.load_pl / self.cmp
        self.load_linearized_normalized = self.load_linearized / self.cmp
        self.K_ic_normalized = self.K_ic / self.cmp
        self.K_jc_normalized = self.K_jc / self.cmp
        self.K_jc_overall_normalized = self.K_jc_overall / self.cmp
        self.K_jc_offset_normalized = self.K_jc_offset / self.cmp
        self.K_jc_overall_offset_normalized = self.K_jc_overall_offset / self.cmp
        
        # then add to dictionary
        self.plottable_arrays['load_normalized'] = self.load_normalized
        self.plottable_arrays['load_pl_normalized'] = self.load_pl_normalized
        self.plottable_arrays['load_linearized_normalized'] = self.load_linearized_normalized
        self.plottable_arrays['K_jc_normalized'] = self.K_jc_normalized
        self.plottable_arrays['K_jc_offset_normalized'] = self.K_jc_offset_normalized
    
        
    def plot(self, x, y, sub, label=None, c=None, mc=None):
        x_array = self.plottable_arrays[x]
        y_array = self.plottable_arrays[y]
        
        s = [20*2**n for n in range(len(x_array))]
        
        sub.plot(x_array, y_array, color=c, label=label, markerfacecolor=mc, markeredgewidth=0, marker='.', markersize=5)

        