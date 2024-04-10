scoreboard players reset * god
scoreboard players reset * cd.1
scoreboard players reset * cd.2
scoreboard players reset * cd.3
scoreboard players reset * cd.4

effect clear @a
kill @e[type=!player,team=!]
kill @e[tag=junglemonster]
kill @e[type=item]

tp @a 3 85 -435
team empty spectator
team empty t1
team empty t2

gamemode adventure @a

clear @a