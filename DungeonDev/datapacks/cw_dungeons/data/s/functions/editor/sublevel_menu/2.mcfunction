execute if score .debug dg.options matches 1 run tellraw @a {"text": "editor/sublevel_menu/2"}
tellraw @s [{"text": "    "}, {"text": "  1     "}, {"text": "-", "color": "red", "clickEvent": {"action": "run_command", "value": "/function s:editor/sublevel_menu/decrease"}}, {"text": " 2 "}, {"text": "+", "color": "green", "clickEvent": {"action": "run_command", "value": "/function s:editor/sublevel_menu/increase"}}]
tellraw @s {"text": "  -------------"}
tellraw @s [{"text": "1 | "}, {"text": "-", "color": "red", "clickEvent": {"action": "run_command", "value": "/function s:editor/sublevel_menu/decrease/0/0"}}, {"text": " "}, {"score": {"objective": "dg.sublevel", "name": ".sublevel_0_0"}}, {"text": " "}, {"text": "+", "color": "green", "clickEvent": {"action": "run_command", "value": "/function s:editor/sublevel_menu/increase/0/0"}}, {"text": " | "}, {"text": "-", "color": "red", "clickEvent": {"action": "run_command", "value": "/function s:editor/sublevel_menu/decrease/0/1"}}, {"text": " "}, {"score": {"objective": "dg.sublevel", "name": ".sublevel_0_1"}}, {"text": " "}, {"text": "+", "color": "green", "clickEvent": {"action": "run_command", "value": "/function s:editor/sublevel_menu/increase/0/1"}}, {"text": " | "}]
tellraw @s [{"text": "2 | "}, {"text": "-", "color": "red", "clickEvent": {"action": "run_command", "value": "/function s:editor/sublevel_menu/decrease/1/0"}}, {"text": " "}, {"score": {"objective": "dg.sublevel", "name": ".sublevel_1_0"}}, {"text": " "}, {"text": "+", "color": "green", "clickEvent": {"action": "run_command", "value": "/function s:editor/sublevel_menu/increase/1/0"}}, {"text": " | "}, {"text": "-", "color": "red", "clickEvent": {"action": "run_command", "value": "/function s:editor/sublevel_menu/decrease/1/1"}}, {"text": " "}, {"score": {"objective": "dg.sublevel", "name": ".sublevel_1_1"}}, {"text": " "}, {"text": "+", "color": "green", "clickEvent": {"action": "run_command", "value": "/function s:editor/sublevel_menu/increase/1/1"}}, {"text": " | "}]
