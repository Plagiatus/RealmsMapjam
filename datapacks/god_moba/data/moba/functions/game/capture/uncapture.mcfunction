tag @s remove captured

# data modify entity @e[type=text_display,limit=1,sort=nearest] text set value "available"
# tellraw @a ["uncapture me ", {"score": {"name": "@s", "objective": "id"}}]

execute at @e[tag=beacon,type=marker,limit=1,sort=nearest] run setblock ~ ~ ~ white_stained_glass