execute if score @s tmp = @s capture run return 0

scoreboard players operation #tmp tmp = @s tmp
execute if score #tmp tmp matches ..-1 run scoreboard players operation #tmp tmp *= -1 const

scoreboard players operation #row tmp = #tmp tmp
execute store result storage moba:tmp row int 1 run scoreboard players operation #row tmp %= #length tmp
#  scoreboard players operation #row tmp -= #half tmp

scoreboard players operation #col tmp = #tmp tmp
execute store result storage moba:tmp col int 1 run scoreboard players operation #col tmp /= #length tmp
# tellraw @a ["tmp ", {"score":{"name": "#tmp", "objective": "tmp"}}, " col ", {"score":{"name": "#col", "objective": "tmp"}}, " row ", {"score":{"name": "#row", "objective": "tmp"}}]
# scoreboard players operation #col2 tmp = #col tmp
# execute if score @s tmp matches 1.. store result storage moba:tmp col int 1 run scoreboard players operation #col tmp -= #half tmp
# execute if score @s tmp matches ..-1 store result storage moba:tmp col int 1 run scoreboard players operation #col2 tmp += #half tmp

# scoreboard players operation #col2 tmp = #length tmp
# scoreboard players operation #col tmp = @s tmp
# scoreboard players operation #col tmp /= #length tmp
# scoreboard players operation #col2 tmp -= #col tmp
# scoreboard players operation #col2 tmp -= #half tmp
# execute if score @s tmp matches 1.. store result storage moba:tmp col int 1 run scoreboard players operation #col2 tmp -= #length tmp

# execute if score @s tmp matches ..0 run scoreboard players operation #col tmp *= -1 const
# execute if score @s tmp matches ..0 store result storage moba:tmp col int 1 run scoreboard players operation #col tmp += #half tmp

data modify storage moba:tmp block set value "white_concrete"
execute if score @s capture > @s tmp if score @s capture matches 1.. run data modify storage moba:tmp block set value "red_concrete"
execute if score @s capture < @s tmp if score @s capture matches ..-1 run data modify storage moba:tmp block set value "blue_concrete"

function moba:game/capture/update_block with storage moba:tmp

execute if score @s tmp matches 0 run function moba:game/capture/uncapture

execute if score @s capture > @s tmp run scoreboard players add @s tmp 1
execute if score @s capture < @s tmp run scoreboard players remove @s tmp 1

function moba:game/capture/update