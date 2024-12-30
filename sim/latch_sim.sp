*latch_sim
.lib ../lib/sm046005-1j.hspice typical
.include ../src/inverter.sp
.include ../src/latch.sp
.global VDD Clk _Clk
VVDD VDD 0 3.3v
Xlatch q d Clk _Clk latch
V_d d 0 PULSE 0 3.3 0N 1N 1N 2N 6N
V_clk Clk 0 PULSE 0 3.3 0N 1N 1N 15N 40N
X_clkinv _Clk Clk inverter
.tran 1N 120N
.PRINT V(q) V(d) V(Clk) V(_Clk)