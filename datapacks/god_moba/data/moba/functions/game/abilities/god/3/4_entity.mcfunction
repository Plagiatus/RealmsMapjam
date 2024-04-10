
execute if entity @s[team=t1] unless entity @e[tag=hades.valley,tag=t2,distance=..10] run scoreboard players set @s hades.valley 0
execute if entity @s[team=t2] unless entity @e[tag=hades.valley,tag=t1,distance=..10] run scoreboard players set @s hades.valley 0
execute if entity @s[tag=junglemonster] unless entity @e[tag=hades.valley,distance=..10] run scoreboard players set @s hades.valley 0

execute if score @s hades.valley matches 20.. run effect give @s slowness 1 0 false
execute if score @s hades.valley matches 40.. run effect give @s slowness 1 1 false
execute if score @s hades.valley matches 60.. run effect give @s slowness 1 2 false
execute if score @s hades.valley matches 80.. run effect give @s wither 2 2 false