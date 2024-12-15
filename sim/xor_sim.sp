*xor_sim
.lib ../lib/sm046005-1j.hspice typical 
.include ../src/xor.sp

.global VDD
VVDD VDD 0 3.3v
Xxor out a b xor
Va a 0 PULSE 0 3.3 0N 1N 1N 39N 80N
Vb b 0 PULSE 0 3.3 0N 1N 1N 79N 160N
.tran 1N 320N
.PRINT V(a) V(b) V(out)