.PARAM LN=0.35u LP=0.35u WN=1u WP=3u WP_l=1u
.subckt g_point g_out p_high g_high g_low Clk_k
Mp_clk 1 Clk_k VDD VDD PMOS_3P3 L=LP W=WP
Mp_1 1 3 VDD VDD PMOS_3P3 L=LP W=WP_l
Mn_p_high 1 p_high 2 0 NMOS_3P3 L=LN W=WP
Mn_g_low 2 g_low 0 0 NMOS_3P3 L=LN W=WP
Mn_g_high 1 g_high 0 0 NMOS_3P3 L=LN W=WP
X1 3 1 inverter
X2 g_out 1 inverter
.ends g_point