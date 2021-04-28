from datetime import datetime
path = "/home/luado/CAM/projetos/provisionamento-dpf/crontest.txt"
with open(path, "a") as f:
    f.write(f"""Now it is {datetime.now().strftime("%Y/%m/%d %H:%M:%S")}\n""")