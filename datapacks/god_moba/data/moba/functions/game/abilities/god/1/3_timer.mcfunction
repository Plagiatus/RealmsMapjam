scoreboard players add @s timer 1

execute if score @s timer matches 160 on passengers run ride @s dismount
execute if score @s timer matches 160 run tp @s ~ -64 ~
execute if score @s timer matches 161 run kill @s