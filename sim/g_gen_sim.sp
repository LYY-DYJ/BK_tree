.lib ../lib/sm046005-1j.hspice typical 
.include ../src/g_gen.sp

.global VDD Clk
VVDD VDD 0 3.3v
Xg_gen p a b g_gen
V_clk Clk 0 PULSE 0 3.3 5N 1N 1N 20N 40N
Va a 0 PULSE 0 3.3 0N 1N 1N 40N 80N
Vb b 0 PULSE 0 3.3 0N 1N 1N 80N 160N
.tran 1N 640N
.PRINT V(a) V(b) V(Clk) V(p) V(Xp_gen.3) V(Xp_gen.1) V(Xp_gen.2)