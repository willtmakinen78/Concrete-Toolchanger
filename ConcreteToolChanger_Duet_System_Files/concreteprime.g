;concreteprime.g

var primeZ = global.concretePrimeLayer * global.concretePrimeZ

G1 X{global.concretePrimeX} Y{global.concretePrimeY} Z{var.primeZ} F7000
G1 X{global.concretePrimeX+global.concretePrimeLength} E{global.concretePrimeE} F600

set global.concretePrimeLayer = global.concretePrimeLayer + 1

