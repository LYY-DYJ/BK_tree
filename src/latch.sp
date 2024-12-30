.PARAM LN=0.35u LP=0.35u WN=1u WP=3u
.subckt latch q d clk _clk
Mp_1 1 clk _q VDD PMOS_3P3 L=LP W=WP
Mn_1 1 _clk _q 0 NMOS_3P3 L=LN W=WP
Mp_2 1 _clk _d VDD PMOS_3P3 L=LN W=WN
Mn_2 1 clk _d 0 NMOS_3P3 L=LN W=WN
Xinvd _d d inverter
Xinvq _q q inverter
Xinv1 q 1 inverter
.ends latch