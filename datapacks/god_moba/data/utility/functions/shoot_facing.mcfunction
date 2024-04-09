# propels the given entity into the looking direction of the other given entity (doesn't work on players) with the given force
#
#> parameters
# {source}: Entity selector that's the source for the looking direction. ideally that's @s
# {target}: The entity that needs to get propelled
# {force}: The amount of force, translating to the speed of the entity. max 10.

# summon temporary entity "in front of the player", if the player was standing at 0 0 0
$execute as $(source) positioned 0.0 0 0.0 run summon marker ^ ^ ^$(force) {Tags:["direction"]}

# copy the markers position tag to the sheeps motion tag
$data modify entity $(target) Motion set from entity @e[type=marker,tag=direction,limit=1] Pos

# clean up
kill @e[tag=direction,type=marker]