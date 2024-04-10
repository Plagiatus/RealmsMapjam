

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

execute if entity @s[tag=t1] run scoreboard players operation @s capture = @s max_capture
execute if entity @s[tag=t2] run scoreboard players operation @s capture = @s min_capture

execute if entity @s[scores={size=1,capture=1..}] run fill ~ ~ ~ ~10 ~ ~10 red_concrete 
execute if entity @s[scores={size=2,capture=1..}] run fill ~ ~ ~ ~14 ~ ~14 red_concrete 
execute if entity @s[scores={size=3,capture=1..}] run fill ~ ~ ~ ~20 ~ ~20 red_concrete
execute if entity @s[scores={size=1,capture=..-1}] run fill ~ ~ ~ ~10 ~ ~10 cyan_concrete 
execute if entity @s[scores={size=2,capture=..-1}] run fill ~ ~ ~ ~14 ~ ~14 cyan_concrete 
execute if entity @s[scores={size=3,capture=..-1}] run fill ~ ~ ~ ~20 ~ ~20 cyan_concrete

scoreboard players set @s[tag=!locked] capture 0

execute if entity @s[tag=!lane1,tag=!lane2] run scoreboard players set @s lane 0
execute if entity @s[tag=lane1] run scoreboard players set @s lane 1
execute if entity @s[tag=lane2] run scoreboard players set @s lane 2

# execute if entity @s[tag=locked] run summon text_display ~ ~1 ~ {text:'"locked"',billboard:"center",Tags:["capture"]}
# execute if entity @s[tag=!locked] run summon text_display ~ ~1 ~ {text:'"available"',billboard:"center",Tags:["capture"]}

# ids
scoreboard players operation @s id = #max id
scoreboard players add #max id 1