scoreboard players add @s hades.valley 1

execute if entity @s[tag=t1] run scoreboard players add @e[team=t2] hades.valley 1
execute if entity @s[tag=t2] run scoreboard players add @e[team=t1] hades.valley 1

particle soul ~ ~ ~ 4 0 4 0 100 force

kill @s[scores={hades.valley=150..}]