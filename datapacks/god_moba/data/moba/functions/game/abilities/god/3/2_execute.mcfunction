scoreboard players remove @s hades.downward 1

execute if entity @s[team=t1,scores={hades.downward=40..}] if entity @a[team=t2,scores={god=3},distance=..10] run particle soul ~ ~1 ~ 0.1 .5 .1 0 1 force
execute if entity @s[team=t2,scores={hades.downward=40..}] if entity @a[team=t1,scores={god=3},distance=..10] run particle soul ~ ~1 ~ 0.1 .5 .1 0 1 force