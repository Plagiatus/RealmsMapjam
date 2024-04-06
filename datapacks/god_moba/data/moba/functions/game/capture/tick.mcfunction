scoreboard players add @s timer 1
execute if score @s timer matches ..1 run return 0

scoreboard players set @s timer 0
scoreboard players operation @s tmp = @s capture

execute if score @s size matches 1 run function moba:game/capture/calc {half: 5, full: 11}
execute if score @s size matches 2 run function moba:game/capture/calc {half: 7, full: 15}
execute if score @s size matches 3 run function moba:game/capture/calc {half: 10, full: 21}

scoreboard players operation @s capture < @s max_capture 
scoreboard players operation @s capture > @s min_capture

scoreboard players set #length tmp 11
execute if score @s size matches 2 run scoreboard players set #length tmp 15
execute if score @s size matches 3 run scoreboard players set #length tmp 21

scoreboard players operation #half tmp = #length tmp
scoreboard players operation #half tmp /= 2 const

# update capture status
execute unless score @s tmp = @s capture run function moba:game/capture/update

# if fully captured, update nearby capture points
execute store result storage moba:tmp id int 1 run scoreboard players get @s id
execute store result storage moba:tmp lane int 1 run scoreboard players get @s lane
execute if score @s[tag=!captured] capture = @s max_capture run function moba:game/capture/fully_captured with storage moba:tmp
execute if score @s[tag=!captured] capture = @s min_capture run function moba:game/capture/fully_captured with storage moba:tmp