.PARAM LN=0.35u LP=0.35u WN=1u WP=3u
.subckt inverter out in
Mp out in VDD VDD PMOS_3P3 L=LP W=WP
Mn out in 0 0 NMOS_3P3 L=LN W=WN
.ends inverter