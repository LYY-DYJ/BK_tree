*bk_tree_sim
.lib ../lib/sm046005-1j.hspice typical 
.include ../src/inverter.sp
.include ../src/g_gen.sp
.include ../src/p_gen.sp
.include ../src/p_point.sp
.include ../src/g_point.sp
.include ../src/xor.sp
.include ../script/bk_tree.sp

.global VDD Clk
VVDD VDD 0 3.3v
Xbk_tree s0 s1 s2 s3 c4 a0 a1 a2 a3 b0 b1 b2 b3 c0 bk_tree
V_clk Clk 0 PULSE 0 3.3 8N 1N 1N 20N 40N
V_a0 a0 0 PULSE 0 3.3 40N 1N 1N 40N 80N
V_a1 a1 0 PULSE 0 3.3 80N 1N 1N 80N 160N
V_a2 a2 0 0
V_a3 a3 0 0
V_b0 b0 0 PULSE 0 3.3 160N 1N 1N 160N 320N
V_b1 b1 0 PULSE 0 3.3 320N 1N 1N 320N 640N
V_b2 b2 0 0
V_b3 b3 0 0
V_c0 c0 0 PULSE 0 3.3 640N 1N 1N 640N 1280N
.tran 1N 1280N
.PRINT V(s0) V(s1) V(s2) V(s3) V(c4) V(a0) V(a1) V(a2) V(a3) V(b0) V(b1) V(b2) V(b3) V(c0) V(Clk)
