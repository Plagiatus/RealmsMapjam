

scoreboard players set @s[tag=large] size 3
scoreboard players set @s[tag=large] max_capture 441
scoreboard players set @s[tag=medium] size 2
scoreboard players set @s[tag=medium] max_capture 225
scoreboard players set @s[tag=small] size 1
scoreboard players set @s[tag=small] max_capture 121

scoreboard players operation @s min_capture = @s max_capture 
scoreboard players operation @s min_capture *= -1 const

execute if score @s size matches 1 run fill ~ ~ ~ ~10 ~ ~10 white_concrete 
execute if score @s size matches 2 run fill ~ ~ ~ ~14 ~ ~14 white_concrete 
execute if score @s size matches 3 run fill ~ ~ ~ ~20 ~ ~20 white_concrete

scoreboard players set @s[tag=!locked] capture 0

execute if entity @s[x=10,dx=50] run scoreboard players set @s lane 1
execute if entity @s[x=-10,dx=-50] run scoreboard players set @s lane 2