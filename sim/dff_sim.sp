*dff_sim
.lib ../lib/sm046005-1j.hspice typical
.include ../src/inverter.sp
.include ../src/latch.sp
.include ../src/dff.sp
.global VDD Clk _Clk
VVDD VDD 0 3.3v
Xdff q d Clk _Clk dff
V_d d 0 PULSE 3.3 0 0N 0.1N 0.1N 30N 100N
V_clk Clk 0 PULSE 0 3.3 0N 0.1N 0.1N 10N 20N
X_clkinv _Clk Clk inverter
.tran 0.001N 100N
.PRINT V(q) V(d) V(Clk) V(_Clk)