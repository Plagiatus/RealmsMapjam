# display the current cooldown in the actionbar

# do some math to display the cd in human readable format
$scoreboard players operation #s tmp = @s cd.$(cd)
scoreboard players operation #ms tmp = #s tmp

scoreboard players operation #s tmp /= 20 const
scoreboard players operation #ms tmp %= 20 const
scoreboard players operation #ms tmp *= 5 const

execute if score #ms tmp matches ..9 run title @s actionbar [{"text": "Cooldown: ", "color": "red"}, {"score":{"name": "#s", "objective": "tmp"}}, ".0", {"score":{"name": "#ms", "objective": "tmp"}}, "s"]
execute if score #ms tmp matches 10.. run title @s actionbar [{"text": "Cooldown: ", "color": "red"}, {"score":{"name": "#s", "objective": "tmp"}}, ".", {"score":{"name": "#ms", "objective": "tmp"}}, "s"]
scoreboard players reset @s carrot_on_a_stick_used
scoreboard players set #showingCD tmp 1