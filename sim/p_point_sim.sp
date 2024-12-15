*p_point_sim
.lib ../lib/sm046005-1j.hspice typical 
.include ../src/p_gen.sp 
.include ../src/p_point.sp
.include ../src/inverter.sp


.global VDD Clk
VVDD VDD 0 3.3v
Xp_point p1_0 p1 p0 Clk p_point
Xp_gen0 p0 a0 b0 p_gen
Xp_gen1 p1 a1 b1 p_gen
V_clk Clk 0 PULSE 0 3.3 5N 1N 1N 20N 40N
Va0 a0 0 PULSE 0 3.3 0N 1N 1N 40N 80N
Va1 a1 0 PULSE 0 3.3 0N 1N 1N 40N 80N
Vb0 b0 0 PULSE 0 3.3 0N 1N 1N 80N 160N
Vb1 b1 0 PULSE 0 3.3 0N 1N 1N 40N 80N
.tran 1N 640N
.PRINT V(p0) V(p1) V(Clk) V(p1_0)