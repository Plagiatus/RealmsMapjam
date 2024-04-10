execute if entity @s[tag=god] run function moba:lobby/choose/god

execute if entity @s[tag=start] run function moba:lobby/start
execute if entity @s[tag=red] as @p[tag=utils.interact.c] run function moba:lobby/join/t1
execute if entity @s[tag=spectator] as @p[tag=utils.interact.c] run function moba:lobby/join/spectator
execute if entity @s[tag=blue] as @p[tag=utils.interact.c] run function moba:lobby/join/t2