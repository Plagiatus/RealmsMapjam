$execute if score @s capture = @s max_capture as @e[tag=capture,type=marker,scores={id=..$(id),lane=$(lane)},distance=1..,limit=1,sort=nearest] run function moba:game/capture/lock
$execute if score @s capture = @s max_capture as @e[tag=capture,type=marker,scores={id=$(id)..,lane=$(lane)},distance=1..,limit=1,sort=nearest] run function moba:game/capture/unlock

$execute if score @s capture = @s min_capture as @e[tag=capture,type=marker,scores={id=..$(id),lane=$(lane)},distance=1..,limit=1,sort=nearest] run function moba:game/capture/unlock
$execute if score @s capture = @s min_capture as @e[tag=capture,type=marker,scores={id=$(id)..,lane=$(lane)},distance=1..,limit=1,sort=nearest] run function moba:game/capture/lock

say fully captured