# capture points
execute as @e[tag=capture,type=marker,tag=!locked] at @s run function moba:game/capture/tick

# weapons
# execute if entity @a[tag=diety] as @a run function moba:weapon/player_tick

# abilities
execute as @a[team=!spectator] at @s run function moba:game/abilities/player_tick