scoreboard players set #game status 1

# tp teams
tp @a[team=t1] 4 66 -383
tp @a[team=t2] 4 66 21

spawnpoint @a[team=t1] 4 66 -383
spawnpoint @a[team=t2] 4 66 21

# put players without a team into spectator
team join spectator @a[team=]
tp @a[team=spectator] @a[limit=1,sort=random,team=!spectator]
gamemode spectator @a[team=spectator]

# if player doesn't have a god chosen, choose one at random
execute as @a[team=!spectator] unless score @s god = @s god store result score @s god run random value 1..3

function moba:game/setup/reset_entities
execute as @a[team=!spectator] run function moba:game/setup/items


# gamerules
gamerule mobGriefing false
gamerule doEntityDrops false
gamerule announceAdvancements false
gamerule doDaylightCycle false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule doWardenSpawning false
gamerule naturalRegeneration false
gamerule keepInventory true
gamerule showDeathMessages false

# TODO some fancy stuff here, particles, sounds, maybe a start timer, or at least a title. 