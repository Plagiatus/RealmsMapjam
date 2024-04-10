execute store result storage moba:jungle id int 1 run scoreboard players get @s jungleid

execute store result score #r tmp run function moba:game/monsters/jungle/tick_check with storage moba:jungle

execute if score #r tmp matches 1 run return 0

scoreboard players remove @s timer 1

execute if score @s timer matches ..0 run function moba:game/monsters/jungle/summon with storage moba:jungle