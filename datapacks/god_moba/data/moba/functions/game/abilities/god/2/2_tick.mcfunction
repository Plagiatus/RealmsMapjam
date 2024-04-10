scoreboard players remove @s timer 1

scoreboard players operation @s tmp = @s timer
scoreboard players operation @s tmp %= 20 const

execute if score @s tmp matches ..0 run summon lightning_bolt ~ 55 ~
# TODO attribute damage to owner of the cloud
tag @s add self
execute if score @s tmp matches ..0 if entity @s[tag=t1] as @e[distance=..3,team=t2] run function utility:damage {target: "@s", amount: 5, type: "lightning_bolt", attacker: "@e[tag=self,limit=1]"} 
execute if score @s tmp matches ..0 if entity @s[tag=t2] as @e[distance=..3,team=t1] run function utility:damage {target: "@s", amount: 5, type: "lightning_bolt", attacker: "@e[tag=self,limit=1]"} 
execute if score @s tmp matches ..0 as @e[distance=..3,tag=junglemonster] run function utility:damage {target: "@s", amount: 5, type: "lightning_bolt", attacker: "@e[tag=self,limit=1]"} 
tag @s remove self

particle campfire_cosy_smoke ~ ~ ~ 1 0 1 0 10
execute if entity @s[tag=t2] run particle dust 0.027 0.82 0.78 1 ~ ~ ~ 1.5 0 1.5 0 5
execute if entity @s[tag=t1] run particle dust 0.82 0.027 0.027 1 ~ ~ ~ 1.5 0 1.5 0 5

execute if entity @s[tag=t1] run effect give @e[distance=..3,team=t2] slowness 2 2 false
execute if entity @s[tag=t2] run effect give @e[distance=..3,team=t1] slowness 2 2 false

execute if score @s timer matches ..0 run kill @s