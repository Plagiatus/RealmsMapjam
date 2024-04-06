execute unless score @s weapon.cooldown matches 0 run playsound minecraft:entity.villager.no master @s
execute unless score @s weapon.cooldown matches 0 run return 0

say Bolt Fired!
scoreboard players operation @s weapon.cooldown = .bolt_cooldown const