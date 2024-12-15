# Brent-Kung Tree adder #
author: Liyiyang 22ME
This is a class project of Digital Integrated Circults class in Fudan university  
## src：
该路径下是电路网表
- inverter是反相器
- xor是异或门，采用静态逻辑
- p_gen.sp是进位传递信号生成单元，由输入位生成该位的进位传递信号，使用动态逻辑实现，有输出扇出补偿反相器，参考书p389
- g_gen.sp是进位生成信号生成单元，由输入位生成该位的进位生成信号，使用动态逻辑实现，有输出删除补偿反相器，参考书p389
- p_point.sp是进位传递信号点运算单元，使用多米诺逻辑实现，参考书p390
- g_point.sp是进位生成信号点运算单元，使用多米诺逻辑实现，参考书p390
- bk_tree.sp是BK加法器树，使用python脚本生成
## sim:
该路径下是仿真文件
## script:
bk_tree_gen.py是用于生成bk_tree的python脚本，可调节位宽