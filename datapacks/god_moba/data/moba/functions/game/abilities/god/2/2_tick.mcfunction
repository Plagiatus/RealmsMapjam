scoreboard players remove @s timer 1

scoreboard players operation @s tmp = @s timer
scoreboard players operation @s tmp %= 20 const

execute if score @s tmp matches ..0 run summon lightning_bolt ~ 55 ~

particle campfire_cosy_smoke ~ ~ ~ 1 0 1 0 10
execute if entity @s[tag=t2] run particle dust 0.027 0.82 0.78 1 ~ ~ ~ 1.5 0 1.5 0 5
execute if entity @s[tag=t1] run particle dust 0.82 0.027 0.027 1 ~ ~ ~ 1.5 0 1.5 0 5

execute if entity @s[tag=t1] run effect give @e[distance=..3,team=t2] slowness 2 2 false
execute if entity @s[tag=t2] run effect give @e[distance=..3,team=t1] slowness 2 2 false

# TODO attribute damage to owner of the cloud
execute if entity @s[tag=t1] run function utility:damage {target: "@e[distance=..3,team=t2]", amount: 5, type: "lightning_bolt", attacker: "@s"} 
execute if entity @s[tag=t2] run function utility:damage {target: "@e[distance=..3,team=t1]", amount: 5, type: "lightning_bolt", attacker: "@s"} 


execute if score @s timer matches ..0 run kill @s