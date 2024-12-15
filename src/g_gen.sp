.include inverter.sp

.PARAM LN=0.35u LP=0.35u WN=1u WP=3u WP_l=1u
.macro g_gen g a b
Mp_clk 1 Clk VDD VDD PMOS_3P3 L=LP W=WP
Mp_1 1 4 VDD VDD PMOS_3P3 L=LP W=WP_l
Mn_a 1 a 2 0 NMOS_3P3 L=LN W=WN
Mn_b 2 b 3 0 NMOS_3P3 L=LN W=WN
Mn_clk 3 Clk 0 NMOS_3P3 L=LN W=WN
X1 4 1 inverter
X2 g 1 inverter
.eom