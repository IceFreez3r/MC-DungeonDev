execute if score .debug dg.options matches 1 run tellraw @a {"text": "editor/sublevel_menu/3"}
tellraw @s [{"text": "    "}, {"text": "  1     "}, {"text": "  2     "}, {"text": "-", "color": "red", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/decrease"}}, {"text": " 3 "}, {"text": "+", "color": "green", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/increase"}}]
tellraw @s {"text": "  -------------------"}
tellraw @s [{"text": "1 | "}, {"text": "-", "color": "red", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/decrease/0/0"}}, {"text": " "}, {"score": {"objective": "dg.sublevel", "name": ".sublevel_0_0"}}, {"text": " "}, {"text": "+", "color": "green", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/increase/0/0"}}, {"text": " | "}, {"text": "-", "color": "red", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/decrease/0/1"}}, {"text": " "}, {"score": {"objective": "dg.sublevel", "name": ".sublevel_0_1"}}, {"text": " "}, {"text": "+", "color": "green", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/increase/0/1"}}, {"text": " | "}, {"text": "-", "color": "red", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/decrease/0/2"}}, {"text": " "}, {"score": {"objective": "dg.sublevel", "name": ".sublevel_0_2"}}, {"text": " "}, {"text": "+", "color": "green", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/increase/0/2"}}, {"text": " | "}]
tellraw @s [{"text": "2 | "}, {"text": "-", "color": "red", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/decrease/1/0"}}, {"text": " "}, {"score": {"objective": "dg.sublevel", "name": ".sublevel_1_0"}}, {"text": " "}, {"text": "+", "color": "green", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/increase/1/0"}}, {"text": " | "}, {"text": "-", "color": "red", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/decrease/1/1"}}, {"text": " "}, {"score": {"objective": "dg.sublevel", "name": ".sublevel_1_1"}}, {"text": " "}, {"text": "+", "color": "green", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/increase/1/1"}}, {"text": " | "}, {"text": "-", "color": "red", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/decrease/1/2"}}, {"text": " "}, {"score": {"objective": "dg.sublevel", "name": ".sublevel_1_2"}}, {"text": " "}, {"text": "+", "color": "green", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/increase/1/2"}}, {"text": " | "}]
tellraw @s [{"text": "3 | "}, {"text": "-", "color": "red", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/decrease/2/0"}}, {"text": " "}, {"score": {"objective": "dg.sublevel", "name": ".sublevel_2_0"}}, {"text": " "}, {"text": "+", "color": "green", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/increase/2/0"}}, {"text": " | "}, {"text": "-", "color": "red", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/decrease/2/1"}}, {"text": " "}, {"score": {"objective": "dg.sublevel", "name": ".sublevel_2_1"}}, {"text": " "}, {"text": "+", "color": "green", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/increase/2/1"}}, {"text": " | "}, {"text": "-", "color": "red", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/decrease/2/2"}}, {"text": " "}, {"score": {"objective": "dg.sublevel", "name": ".sublevel_2_2"}}, {"text": " "}, {"text": "+", "color": "green", "clickEvent": {"action": "run_command", "value": "/function dg:editor/sublevel_menu/increase/2/2"}}, {"text": " | "}]