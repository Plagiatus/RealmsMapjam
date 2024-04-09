scoreboard players remove @s timer 1

scoreboard players operation @s tmp = @s timer
scoreboard players operation @s tmp %= 20 const

execute if score @s tmp matches ..0 run summon lightning_bolt ~ 65 ~

particle campfire_cosy_smoke ~ ~ ~ 1 0 1 0 10
execute if entity @s[tag=t2] run particle dust 0.027 0.82 0.78 1 ~ ~ ~ 1.5 0 1.5 0 5
execute if entity @s[tag=t1] run particle dust 0.82 0.027 0.027 1 ~ ~ ~ 1.5 0 1.5 0 5

execute if entity @s[tag=t2] run effect give @a[distance=..3] slowness 2 2 false


execute if score @s timer matches ..0 run kill @s