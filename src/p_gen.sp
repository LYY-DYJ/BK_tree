.PARAM LN=0.35u LP=0.35u WN=1u WP=3u WP_l=1u
.subckt p_gen p a b
Mp_clk 1 Clk VDD VDD PMOS_3P3 L=LP W=WP
Mp_1 1 2 VDD VDD PMOS_3P3 L=LP W=WP_l
Mn_clk 3 Clk 0 0 NMOS_3P3 L=LN W=2u
Mn_a 1 a 3 0 NMOS_3P3 L=LN W=2u
Mn_b 1 b 3 0 NMOS_3P3 L=LN W=2u
X1 2 1 inverter
X2 p 1 inverter
.ends p_gen