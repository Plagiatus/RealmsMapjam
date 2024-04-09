scoreboard players add @s poseidon.dolphin 1

execute store result score @s[team=t1] tmp if entity @e[team=t2,distance=..1.5]
execute if score @s tmp matches 0 store result score @s[team=t2] tmp if entity @e[team=t1,distance=..1.5]

execute if entity @s[team=t1] as @e[team=t2,distance=..1.5] run function utility:damage {target: "@s", amount: 6, type: "minecraft:falling_stalactite", attacker: "@a[scores={god=1},team=t1,limit=1,sort=nearest]"}
execute if entity @s[team=t2] as @e[team=t1,distance=..1.5] run function utility:damage {target: "@s", amount: 6, type: "minecraft:falling_stalactite", attacker: "@a[scores={god=1},team=t2,limit=1,sort=nearest]"}


execute if score @s tmp matches 1 run particle splash ~ ~ ~ 0.75 0 0.75 1 100 force
execute if score @s tmp matches 1 run tp @s ~ ~-64 ~
execute if score @s poseidon.dolphin matches 50.. run particle splash ~ ~ ~ 0.75 0 0.75 1 100 force
execute if score @s poseidon.dolphin matches 50.. run tp @s ~ ~-64 ~
