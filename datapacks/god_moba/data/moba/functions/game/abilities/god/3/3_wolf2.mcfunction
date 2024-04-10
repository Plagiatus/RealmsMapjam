scoreboard players remove @s hades.dog 1
execute if score @s hades.dog matches 1 run tp @s ~ -64 ~
execute if score @s hades.dog matches 1 run data remove entity @s Owner
execute if score @s hades.dog matches ..0 run kill @s