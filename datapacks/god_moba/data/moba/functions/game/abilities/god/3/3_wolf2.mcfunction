scoreboard players remove @s hades.dog 1
execute if score @s hades.dog matches 1 run tp @s ~ -64 ~
execute if score @s hades.dog matches 1 run data modify entity @s Owner set value [I; 0, 0, 0, 0]
execute if score @s hades.dog matches ..0 run kill @s