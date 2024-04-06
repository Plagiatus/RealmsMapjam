tag @s remove locked
data modify entity @e[type=text_display,limit=1,sort=nearest] text set value "available"
# tellraw @a ["unlock me ", {"score": {"name": "@s", "objective": "id"}}]