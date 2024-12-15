*g_point_sim
.lib ../lib/sm046005-1j.hspice typical 
.include ../src/p_gen.sp 
.include ../src/g_gen.sp
.include ../src/g_point.sp
.include ../src/inverter.sp


.global VDD Clk
VVDD VDD 0 3.3v
Xg_point g1_0 p1 g1 g0 Clk g_point
Xp_gen0 p0 a0 b0 p_gen
Xp_gen1 p1 a1 b1 p_gen
Xg_gen0 g0 a0 b0 g_gen
Xg_gen1 g1 a1 b1 g_gen
V_clk Clk 0 PULSE 0 3.3 5N 1N 1N 20N 40N
Va0 a0 0 PULSE 0 3.3 0N 1N 1N 40N 80N
Va1 a1 0 PULSE 0 3.3 0N 1N 1N 80N 160N
Vb0 b0 0 PULSE 0 3.3 0N 1N 1N 160N 320N
Vb1 b1 0 PULSE 0 3.3 0N 1N 1N 320N 640N
.tran 1N 1280N
.PRINT V(g0) V(g1) V(p1) V(Clk) V(g1_0)