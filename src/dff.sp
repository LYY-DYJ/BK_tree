
.subckt dff q d clk _clk
xmaster qm d clk _clk latch
xslave q qm _clk clk latch
.ends dff