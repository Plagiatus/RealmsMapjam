tag @s remove captured

data modify entity @e[type=text_display,limit=1,sort=nearest] text set value "available"
# tellraw @a ["uncapture me ", {"score": {"name": "@s", "objective": "id"}}]
