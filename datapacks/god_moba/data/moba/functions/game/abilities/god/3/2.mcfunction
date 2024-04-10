tag @s add self
execute if entity @s[team=t1] as @e[team=t2,distance=..10,scores={hades.downward=1..}] run function utility:damage {target: "@s", amount: 5, type: "wither", attacker: "@a[tag=self,limit=1]"}
execute if entity @s[team=t2] as @e[team=t1,distance=..10,scores={hades.downward=1..}] run function utility:damage {target: "@s", amount: 5, type: "wither", attacker: "@a[tag=self,limit=1]"}
execute if entity @s[team=t1] as @e[team=t2,distance=..10,scores={hades.downward=1..}] run effect give @s wither 5 1
execute if entity @s[team=t2] as @e[team=t1,distance=..10,scores={hades.downward=1..}] run effect give @s wither 5 1
execute if entity @s[team=t1] as @e[team=t2,distance=..10,scores={hades.downward=1..}] run scoreboard players set @s hades.downward 0
execute if entity @s[team=t2] as @e[team=t1,distance=..10,scores={hades.downward=1..}] run scoreboard players set @s hades.downward 0
tag @s remove self
