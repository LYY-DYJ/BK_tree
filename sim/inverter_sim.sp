.lib ../lib/sm046005-1j.hspice typical
.include ../src/inverter.sp

.global VDD
VVDD VDD 0 3.3v
VIN 1 0 0 PULSE 0 3.3 2N 1N 1N 10N 20N
X1 2 1 inverter
.DC VIN 0 3.3 0.1
.TRAN 1N 20N
.PRINT DC V(1) V(2)