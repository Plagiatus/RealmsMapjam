# capture points
execute as @e[tag=capture,type=marker,tag=!locked] at @s run function moba:game/capture/tick

# weapons
# execute if entity @a[tag=diety] as @a run function moba:weapon/player_tick

# abilities
function moba:game/abilities/tick

# keeping players fed
effect give @a saturation 1 10 true

# give resistance / death in players respawn points
effect give @a[team=t1,x=4,y=65,z=-383,distance=..10] resistance 1 4 false
effect give @a[team=t1,x=4,y=65,z=-383,distance=..10] speed 10 3 false
effect give @a[team=t2,x=4,y=65,z=-383,distance=..10] instant_damage 1 0 false

effect give @a[team=t2,x=4,y=65,z=21,distance=..10] resistance 1 4 false
effect give @a[team=t2,x=4,y=65,z=21,distance=..10] speed 10 3 false
effect give @a[team=t1,x=4,y=65,z=21,distance=..10] instant_damage 1 0 false