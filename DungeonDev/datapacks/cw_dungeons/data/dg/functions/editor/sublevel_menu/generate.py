import os

max_sublevel = 5

for i in range(max_sublevel):
    for j in range(max_sublevel):
        filename = f"decrease/{i}/{j}.mcfunction"
        # create path
        os.makedirs(os.path.dirname(filename), exist_ok=True)
        with open(filename, "w") as f:
            # debug line
            f.write(f'execute if score .debug dg.options matches 1 run tellraw @a {{"text": "editor/sublevel_menu/decrease/{i}/{j}"}}\n')
            # decrease sublevel
            f.write(f"execute if score .sublevel_{i}_{j} dg.sublevel matches 1.. run scoreboard players remove .sublevel_{i}_{j} dg.sublevel 1\n")
            f.write('function dg:storage/store/level/start\n')
            f.write("function dg:editor/sublevel_menu/start\n")
        filename = f"increase/{i}/{j}.mcfunction"
        os.makedirs(os.path.dirname(filename), exist_ok=True)
        with open(filename, "w") as f:
            f.write(f'execute if score .debug dg.options matches 1 run tellraw @a {{"text": "editor/sublevel_menu/increase/{i}/{j}"}}\n')
            # increase sublevel
            f.write(f"scoreboard players add .sublevel_{i}_{j} dg.sublevel 1\n")
            f.write('function dg:storage/store/level/start\n')
            f.write("function dg:editor/sublevel_menu/start\n")

def menu(sublevels):
    with open(f"{sublevels}.mcfunction", "w") as f:
        # debug line
        f.write(f'execute if score .debug dg.options matches 1 run tellraw @a {{"text": "editor/sublevel_menu/{sublevels}"}}\n')
        # first line
        f.write(f'tellraw @s [{{"text": "    "}}, ')
        for i in range(sublevels - 1):
            f.write(f'{{"text": "  {i + 1}     "}}, ')
        f.write(f'{{"text": "-", "color": "red", "clickEvent": {{"action": "run_command", "value": "/function dg:editor/sublevel_menu/decrease"}}}}')
        f.write(f', {{"text": " {sublevels} "}}')
        f.write(f', {{"text": "+", "color": "green", "clickEvent": {{"action": "run_command", "value": "/function dg:editor/sublevel_menu/increase"}}}}]\n')
        # separator line
        f.write(f'tellraw @s {{"text": "  -{"------" * sublevels}"}}\n')
        # matrix
        for i in range(sublevels):
            f.write(f'tellraw @s [{{"text": "{i + 1} | "}}')
            for j in range(sublevels):
                f.write(f', {{"text": "-", "color": "red", "clickEvent": {{"action": "run_command", "value": "/function dg:editor/sublevel_menu/decrease/{i}/{j}"}}}}')
                f.write(', {"text": " "}')
                f.write(f', {{"score": {{"objective": "dg.sublevel", "name": ".sublevel_{i}_{j}"}}}}')
                f.write(', {"text": " "}')
                f.write(f', {{"text": "+", "color": "green", "clickEvent": {{"action": "run_command", "value": "/function dg:editor/sublevel_menu/increase/{i}/{j}"}}}}')
                f.write(', {"text": " | "}')
            f.write(']\n')

for i in range(1, max_sublevel + 1):
    menu(i)
