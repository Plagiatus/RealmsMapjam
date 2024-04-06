execute if score @s id matches 0 if score @s capture = @s min_capture run function moba:game/over/t2_win
execute if score @s id matches 11 if score @s capture = @s max_capture run function moba:game/over/t1_win
execute unless score @s id matches 1..10 run return 0


scoreboard players operation #tmp capture = @s capture

# team 1
$execute if score @s capture = @s max_capture as @e[tag=capture,type=marker,scores={id=..$(id),lane=$(lane)},distance=1..,limit=1,sort=nearest] at @s run function moba:game/capture/lock
$execute if score @s capture = @s max_capture as @e[tag=capture,type=marker,scores={id=$(id)..,lane=$(lane)},distance=1..,limit=1,sort=nearest] at @s run function moba:game/capture/unlock

# team 2
$execute if score @s capture = @s min_capture as @e[tag=capture,type=marker,scores={id=..$(id),lane=$(lane)},distance=1..,limit=1,sort=nearest] at @s run function moba:game/capture/unlock
$execute if score @s capture = @s min_capture as @e[tag=capture,type=marker,scores={id=$(id)..,lane=$(lane)},distance=1..,limit=1,sort=nearest] at @s run function moba:game/capture/lock

# team 1 lock/unlock first/last one
execute if score @s capture = @s max_capture if score @s id matches ..2 as @e[tag=capture,type=marker,scores={id=0,lane=0},distance=1..,limit=1,sort=nearest] at @s run function moba:game/capture/lock
execute if score @s capture = @s max_capture if score @s id matches 9.. as @e[tag=capture,type=marker,scores={id=11,lane=0},distance=1..,limit=1,sort=nearest] at @s run function moba:game/capture/unlock

# team 2 lock/unlock first/last one
execute if score @s capture = @s min_capture if score @s id matches ..2 as @e[tag=capture,type=marker,scores={id=0,lane=0},distance=1..,limit=1,sort=nearest] at @s run function moba:game/capture/unlock
execute if score @s capture = @s min_capture if score @s id matches 9.. as @e[tag=capture,type=marker,scores={id=11,lane=0},distance=1..,limit=1,sort=nearest] at @s run function moba:game/capture/lock

tag @s add captured
data modify entity @e[type=text_display,limit=1,sort=nearest] text set value "captured"

# tellraw @a ["captured me ", {"score": {"name": "@s", "objective": "id"}}]