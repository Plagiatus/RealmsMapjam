scoreboard players operation #tmp capture = @s capture

$execute if score @s capture = @s max_capture as @e[tag=capture,type=marker,scores={id=..$(id),lane=$(lane)},distance=1..,limit=1,sort=nearest] at @s run function moba:game/capture/lock
$execute if score @s capture = @s max_capture as @e[tag=capture,type=marker,scores={id=$(id)..,lane=$(lane)},distance=1..,limit=1,sort=nearest] at @s run function moba:game/capture/unlock

$execute if score @s capture = @s min_capture as @e[tag=capture,type=marker,scores={id=..$(id),lane=$(lane)},distance=1..,limit=1,sort=nearest] at @s run function moba:game/capture/unlock
$execute if score @s capture = @s min_capture as @e[tag=capture,type=marker,scores={id=$(id)..,lane=$(lane)},distance=1..,limit=1,sort=nearest] at @s run function moba:game/capture/lock

tag @s add captured
data modify entity @e[type=text_display,limit=1,sort=nearest] text set value "captured"

# tellraw @a ["captured me", {"score": {"name": "@s", "objective": "id"}}]