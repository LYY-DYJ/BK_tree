import os

width = int(input("width:"))
content = ""
content += ".subckt bk_tree"

i = 0
while i < width:
    content += " s" + str(i)
    i += 1
content += " cout"

i = 0
while i < width:
    content += " a" + str(i)
    i += 1

i = 0
while i < width:
    content += " b" + str(i)
    i += 1
content += " c0\n"

list_p = []
list_g = []
i = 0
while i < width:
    content += "Xp_gen" + str(i) + " p" + str(i) + " a" + str(i) + " b" + str(i) + " p_gen\n"
    content += "Xg_gen" + str(i) + " g" + str(i) + " a" + str(i) + " b" + str(i) + " g_gen\n"
    list_p.append("p" + str(i))
    list_g.append("g" + str(i))
    i += 1


i = 1
while i < width:
    j = 2 * i - 1
    while j < width:
        content += (
            "Xp_point"
            + str(j)
            +"_"
            + str(i)
            + " p"
            + str(j)
            +"_"
            + str(i)
            + " "
            + list_p[j]
            + " "
            + list_p[j - i]
            + " Clk p_point\n"
        )
        content += (
            "Xg_point"
            + str(j)
            +"_"
            + str(i)
            + " g"
            + str(j)
            +"_"
            + str(i)
            + " "
            + list_p[j]
            + " "
            + list_g[j]
            + " "
            + list_g[j - i]
            + " Clk g_point\n"
        )
        list_p[j] = "p" + str(j) +"_"+ str(i)
        list_g[j] = "g" + str(j) +"_"+ str(i)
        j += 2 * i
    i *= 2

i = width // 4
while i >= 1:
    j = width - i - 1
    while j - i > 0:
        content += (
            "Xp_point_inv"
            + str(j)
            +"_"
            + str(i)
            + " p_inv"
            + str(j)
            +"_"
            + str(i)
            + " "
            + list_p[j]
            + " "
            + list_p[j - i]
            + " Clk p_point\n"
        )
        content += (
            "Xg_point_inv"
            + str(j)
            +"_"
            + str(i)
            + " g_inv"
            + str(j)
            +"_"
            + str(i)
            + " "
            + list_p[j]
            + " "
            + list_g[j]
            + " "
            + list_g[j - i]
            + " Clk g_point\n"
        )
        list_p[j] = "p_inv" + str(j) +"_"+ str(i)
        list_g[j] = "g_inv" + str(j) +"_"+ str(i)
        j -= 2 * i
    i //= 2

i = 0
while i < width:
    content += (
        "Xc"
        + str(i)
        + "gen c"
        + str(i+1)
        + " "
        + list_p[i]
        + " "
        + list_g[i]
        + " c0 Clk g_point\n"
    )
    if i != width:
        content += (
            "Xxor1"
            + str(i)
            + " axorb"
            + str(i)
            + " a"
            + str(i)
            + " b"
            + str(i)
            + " xor\n"
        )
        content += (
            "Xxor2"
            + str(i)
            + " s_d"
            + str(i)
            + " axorb"
            + str(i)
            + " c"
            + str(i)
            + " xor\n"
        )
    i += 1

i=0
while i<=width:
    if i!=width:
        content+="Xdff"+str(i)+" s"+str(i)+" s_d"+str(i)+" Clk _Clk dff\n"
    else:
        content+="Xdff"+str(i)+" cout"+" c"+str(i)+" Clk _Clk dff\n"
    i += 1

content += ".ends bk_tree"

b_content = content.encode("utf8")
file_path = "bk_tree16.sp"
file = os.open(file_path, os.O_WRONLY | os.O_CREAT | os.O_TRUNC)
os.write(file, b_content)
os.close(file)
