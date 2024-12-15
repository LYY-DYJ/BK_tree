.subckt bk_tree s0 s1 s2 s3 c4 a0 a1 a2 a3 b0 b1 b2 b3 c0
Xp_gen0 p0 a0 b0 p_gen
Xg_gen0 g0 a0 b0 g_gen
Xp_gen1 p1 a1 b1 p_gen
Xg_gen1 g1 a1 b1 g_gen
Xp_gen2 p2 a2 b2 p_gen
Xg_gen2 g2 a2 b2 g_gen
Xp_gen3 p3 a3 b3 p_gen
Xg_gen3 g3 a3 b3 g_gen
Xp_point11 p11 p1 p0 Clk p_point
Xg_point11 g11 p1 g1 g0 Clk g_point
Xp_point31 p31 p3 p2 Clk p_point
Xg_point31 g31 p3 g3 g2 Clk g_point
Xp_point32 p32 p31 p11 Clk p_point
Xg_point32 g32 p31 g31 g11 Clk g_point
Xp_point_inv21 p_inv21 p2 p11 Clk p_point
Xg_point_inv21 g_inv21 p2 g2 g11 Clk g_point
Xc0gen c1 p0 g0 c0 Clk g_point
Xxor10 axorb0 a0 b0 xor
Xxor20 s0 axorb0 c0 xor
Xc1gen c2 p11 g11 c0 Clk g_point
Xxor11 axorb1 a1 b1 xor
Xxor21 s1 axorb1 c1 xor
Xc2gen c3 p_inv21 g_inv21 c0 Clk g_point
Xxor12 axorb2 a2 b2 xor
Xxor22 s2 axorb2 c2 xor
Xc3gen c4 p32 g32 c0 Clk g_point
Xxor13 axorb3 a3 b3 xor
Xxor23 s3 axorb3 c3 xor
.ends bk_tree