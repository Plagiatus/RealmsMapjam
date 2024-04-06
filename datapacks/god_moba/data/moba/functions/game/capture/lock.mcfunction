tag @s add locked
data modify entity @e[type=text_display,limit=1,sort=nearest] text set value "locked"
scoreboard players operation @s capture = #tmp capture

# scoreboard players operation @s tmp = @s capture
execute if score @s capture matches ..-1 run scoreboard players operation @s capture = @s min_capture
execute if score @s capture matches 1.. run scoreboard players operation @s capture = @s max_capture
# # execute if entity @s[tag=!captured] run scoreboard players set @s capture 0

execute if score @s size matches 1 if score @s capture = @s max_capture run fill ~ ~ ~ ~10 ~ ~10 red_concrete
execute if score @s size matches 1 if score @s capture = @s min_capture run fill ~ ~ ~ ~10 ~ ~10 blue_concrete
execute if score @s size matches 2 if score @s capture = @s max_capture run fill ~ ~ ~ ~14 ~ ~14 red_concrete
execute if score @s size matches 2 if score @s capture = @s min_capture run fill ~ ~ ~ ~14 ~ ~14 blue_concrete
execute if score @s size matches 3 if score @s capture = @s max_capture run fill ~ ~ ~ ~20 ~ ~20 red_concrete
execute if score @s size matches 3 if score @s capture = @s min_capture run fill ~ ~ ~ ~20 ~ ~20 blue_concrete

# execute unless score @s tmp = @s capture run function moba:game/capture/update

tag @s add captured

# tellraw @a ["lock me ", {"score": {"name": "@s", "objective": "id"}}]