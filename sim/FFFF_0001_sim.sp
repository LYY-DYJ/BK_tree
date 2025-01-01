*FFFF_0001_sim
.lib ../lib/sm046005-1j.hspice typical 
.include ../src/inverter.sp
.include ../src/g_gen.sp
.include ../src/p_gen.sp
.include ../src/p_point.sp
.include ../src/g_point.sp
.include ../src/xor.sp
.include ../src/bk_tree16.sp
.include ../src/latch.sp
.include ../src/dff.sp

.option post
.global VDD Clk _Clk
.PARAM T=3.5N INF=100000N
VVDD VDD 0 3.3v
Xbk_tree s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 cout a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 c0 bk_tree
V_clk Clk 0 PULSE 3.3v 0 0N 0.05N 0.05N 'T/2' T
X_clkinv _Clk Clk large_inverter
V_a0 a0 0 3.3V
V_a1 a1 0 3.3V
V_a2 a2 0 3.3V
V_a3 a3 0 3.3V
V_a4 a4 0 3.3V
V_a5 a5 0 3.3V
V_a6 a6 0 3.3V
V_a7 a7 0 3.3V
V_a8 a8 0 3.3V
V_a9 a9 0 3.3V
V_a10 a10 0 3.3V
V_a11 a11 0 3.3V
V_a12 a12 0 3.3V
V_a13 a13 0 3.3V
V_a14 a14 0 3.3V
V_a15 a15 0 3.3V
V_b0 b0 0 PULSE 0 3.3v 'T*2' 0.05N 0.05N T INF
V_b1 b1 0 PULSE 0 3.3v 'T*3' 0.05N 0.05N T INF
V_b2 b2 0 PULSE 0 3.3v 'T*4' 0.05N 0.05N T INF
V_b3 b3 0 PULSE 0 3.3v 'T*5' 0.05N 0.05N T INF
V_b4 b4 0 PULSE 0 3.3v 'T*6' 0.05N 0.05N T INF
V_b5 b5 0 PULSE 0 3.3v 'T*7' 0.05N 0.05N T INF
V_b6 b6 0 PULSE 0 3.3v 'T*8' 0.05N 0.05N T INF
V_b7 b7 0 PULSE 0 3.3v 'T*9' 0.05N 0.05N T INF
V_b8 b8 0 PULSE 0 3.3v 'T*10' 0.05N 0.05N T INF
V_b9 b9 0 PULSE 0 3.3v 'T*11' 0.05N 0.05N T INF
V_b10 b10 0 PULSE 0 3.3v 'T*12' 0.05N 0.05N T INF
V_b11 b11 0 PULSE 0 3.3v 'T*13' 0.05N 0.05N T INF
V_b12 b12 0 PULSE 0 3.3v 'T*14' 0.05N 0.05N T INF
V_b13 b13 0 PULSE 0 3.3v 'T*15' 0.05N 0.05N T INF
V_b14 b14 0 PULSE 0 3.3v 'T*16' 0.05N 0.05N T INF
V_b15 b15 0 PULSE 0 3.3v 'T*17' 0.05N 0.05N T INF
V_c0 c0 0 PULSE 0 3.3v 'T*18' 0.05N 0.05N T INF
.tran 0.01N '20*T'
.probe tran