scoreboard players remove @s zeus.spark_timer 1
execute if score @s zeus.spark_timer matches ..0 run scoreboard players set @s zeus.spark 0

execute if score @s[team=t1] zeus.spark matches 1 if entity @a[scores={god=2},team=t2,distance=..10] run particle dust 0.859 0.953 0.008 1 ~ ~2 ~ 0 0 0 0 1 force
execute if score @s[team=t2] zeus.spark matches 1 if entity @a[scores={god=2},team=t1,distance=..10] run particle dust 0.859 0.953 0.008 1 ~ ~2 ~ 0 0 0 0 1 force

execute if score @s[team=t1] zeus.spark matches 2 if entity @a[scores={god=2},team=t2,distance=..10] run particle dust 0.953 0.655 0.008 1 ~ ~2 ~ 0 0 0 0 1 force
execute if score @s[team=t2] zeus.spark matches 2 if entity @a[scores={god=2},team=t1,distance=..10] run particle dust 0.953 0.655 0.008 1 ~ ~2 ~ 0 0 0 0 1 force

execute if score @s[team=t1] zeus.spark matches 3 if entity @a[scores={god=2},team=t2,distance=..10] run particle dust 0.953 0.227 0.008 1 ~ ~2 ~ 0 0 0 0 1 force
execute if score @s[team=t2] zeus.spark matches 3 if entity @a[scores={god=2},team=t1,distance=..10] run particle dust 0.953 0.227 0.008 1 ~ ~2 ~ 0 0 0 0 1 force

execute if score @s[tag=junglemonster] zeus.spark matches 1 if entity @a[scores={god=2},distance=..10] run particle dust 0.859 0.953 0.008 1 ~ ~2 ~ 0 0 0 0 1 force
execute if score @s[tag=junglemonster] zeus.spark matches 2 if entity @a[scores={god=2},distance=..10] run particle dust 0.953 0.655 0.008 1 ~ ~2 ~ 0 0 0 0 1 force
execute if score @s[tag=junglemonster] zeus.spark matches 3 if entity @a[scores={god=2},distance=..10] run particle dust 0.953 0.227 0.008 1 ~ ~2 ~ 0 0 0 0 1 force