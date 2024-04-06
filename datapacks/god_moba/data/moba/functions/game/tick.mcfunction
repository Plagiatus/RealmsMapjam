# capture points
execute as @e[tag=capture,type=marker,tag=!locked] at @s run function moba:game/capture/tick

# weapons
function moba:weapon/tick