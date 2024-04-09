execute if entity @s[team=t1] run scoreboard players set @e[type=player,team=t1] king_of_gods 600
execute if entity @s[team=t1] run effect give @e[type=player,team=t1] luck 30 0 false 
execute if entity @s[team=t1] run tellraw @a[team=t2] [{"selector":"@s", "color": "dark_red"}," used ", {"text": "King of Gods", "color": "gold","hoverEvent": {"action": "show_text","value": [{"text": "Increases capture speed of all alive allies for 30 seconds."}]}}] 
execute if entity @s[team=t1] run tellraw @a[team=t1] [{"selector":"@s", "color": "dark_green"}," used ", {"text": "King of Gods", "color": "gold","hoverEvent": {"action": "show_text","value": [{"text": "Increases capture speed of all alive allies for 30 seconds."}]}}]

execute if entity @s[team=t2] run scoreboard players set @e[type=player,team=t2] king_of_gods 600
execute if entity @s[team=t2] run effect give @e[type=player,team=t2] luck 30 0 false 
execute if entity @s[team=t2] run tellraw @a[team=t1] [{"selector":"@s", "color": "dark_red"}," used ", {"text": "King of Gods", "color": "gold","hoverEvent": {"action": "show_text","value": [{"text": "Increases capture speed of all alive allies for 30 seconds."}]}}] 
execute if entity @s[team=t2] run tellraw @a[team=t2] [{"selector":"@s", "color": "dark_green"}," used ", {"text": "King of Gods", "color": "gold","hoverEvent": {"action": "show_text","value": [{"text": "Increases capture speed of all alive allies for 30 seconds."}]}}]