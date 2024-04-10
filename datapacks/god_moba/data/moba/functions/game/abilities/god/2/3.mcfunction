tag @s add self
execute if entity @s[team=t1] as @e[team=t2,scores={zeus.spark=1..},distance=..10] run function moba:game/abilities/god/2/3_execute
execute if entity @s[team=t2] as @e[team=t1,scores={zeus.spark=1..},distance=..10] run function moba:game/abilities/god/2/3_execute
execute as @e[tag=junglemonster,scores={zeus.spark=1..},distance=..10] run function moba:game/abilities/god/2/3_execute
tag @s remove self

summon lightning_bolt ~5 ~-10 ~
summon lightning_bolt ~-5 ~-10 ~
summon lightning_bolt ~ ~-10 ~5
summon lightning_bolt ~ ~-10 ~-5