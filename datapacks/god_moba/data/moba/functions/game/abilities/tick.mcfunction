# ability (marker) entities
execute as @e[tag=ability] at @s run function moba:game/abilities/ability_entity_tick
# all entities that can be affected by abilities
execute as @e[type=#utility:no_raycast,tag=!ability] at @s run function moba:game/abilities/entity_tick
# players
execute as @a[team=!spectator] at @s run function moba:game/abilities/player_tick