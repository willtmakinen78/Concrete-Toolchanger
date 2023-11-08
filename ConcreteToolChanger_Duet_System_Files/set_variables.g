; create all the global variables used during printing

if (exists(global.printing))
	set global.printing = false
else
	global printing = false

; concrete purging
if (exists(global.concretePrimeLayer))
	set global.concretePrimeLayer = 1.0
else
	global concretePrimeLayer = 1.0

if (exists(global.concretePrimeX))
	set global.concretePrimeX = 100.0
else
	global concretePrimeX = 100.0

if (exists(global.concretePrimeY))
	set global.concretePrimeY = 155.0
else
	global concretePrimeY = 155.0
	
if (exists(global.concretePrimeZ))
	set global.concretePrimeZ = 2.0
else
	global concretePrimeZ = 2.0
	
if (exists(global.concretePrimeE))
	set global.concretePrimeE = 1.465
else
	global concretePrimeE = 1.465

if (exists(global.concretePrimeLength))
	set global.concretePrimeLength = 175.0
else
	global concretePrimeLength = 175.0
	

