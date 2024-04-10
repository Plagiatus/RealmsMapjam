execute if entity @s[tag=ws] run summon wither_skeleton ~ ~ ~ {Tags:["junglemonster"],PersistenceRequired:1b}
execute if entity @s[tag=bz] run summon zombie_villager ~ ~ ~ {Tags:["junglemonster"],PersistenceRequired:1b, IsBaby:1b, ArmorDropChances:[0,0,0,0], ArmorItems:[{},{},{},{id:"stone_button",Count:1b}]}
execute if entity @s[tag=bz] run summon zombie_villager ~ ~ ~ {Tags:["junglemonster"],PersistenceRequired:1b, IsBaby:1b, ArmorDropChances:[0,0,0,0], ArmorItems:[{},{},{},{id:"stone_button",Count:1b}]}
execute if entity @s[tag=bz] run summon zombie_villager ~ ~ ~ {Tags:["junglemonster"],PersistenceRequired:1b, IsBaby:1b, ArmorDropChances:[0,0,0,0], ArmorItems:[{},{},{},{id:"stone_button",Count:1b}]}
execute if entity @s[tag=wolves] run summon wolf ~ ~ ~ {Tags:["junglemonster"],PersistenceRequired:1b}
execute if entity @s[tag=wolves] run summon wolf ~ ~ ~ {Tags:["junglemonster"],PersistenceRequired:1b}
execute if entity @s[tag=wolves] run summon wolf ~ ~ ~ {Tags:["junglemonster"],PersistenceRequired:1b}
execute if entity @s[tag=ravager] run summon ravager ~ ~ ~ {Tags:["junglemonster"],PersistenceRequired:1b}
execute if entity @s[tag=wither] run summon wither ~ ~ ~ {Tags:["junglemonster"],PersistenceRequired:1b}

$execute as @e[tag=junglemonster,distance=..2] run scoreboard players set @s jungleid $(id)

scoreboard players operation @s timer = @s max_timer


execute if entity @s[tag=wither] run tellraw @a [{"text": "A Wither has appeared in the center of the map!", "color": "dark_red"}]

execute store result score #z tmp run data get entity @s Pos[2] 
execute if entity @s[tag=ravager] if score #z tmp matches ..-180 run tellraw @a[team=t1] [{"text": "A Ravager has appeared on your side of the map!", "color": "dark_gray"}]
execute if entity @s[tag=ravager] if score #z tmp matches -180.. run tellraw @a[team=t2] [{"text": "A Ravager has appeared on your side of the map!", "color": "dark_gray"}]
