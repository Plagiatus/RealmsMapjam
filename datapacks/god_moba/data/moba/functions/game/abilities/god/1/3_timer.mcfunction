scoreboard players add @s timer 1

execute if score @s timer matches 400 on passengers run ride @s dismount
execute if score @s timer matches 400 run tp @s ~ -64 ~
execute if score @s timer matches 401 run kill @s