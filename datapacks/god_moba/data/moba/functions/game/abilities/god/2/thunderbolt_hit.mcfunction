# particle and sound
particle minecraft:angry_villager ~ ~ ~ 1 1 1 1 10 force
playsound entity.lightning_bolt.impact master @a

# visual lightning (teleport away to avoid damage)
# summon lightning_bolt ~ ~-10 ~ {Tags:["thunderbolt"]}
# tp @e[tag=thunderbolt] 0 -64 0

execute if entity @s[tag=self] run return 0

# damage
function utility:damage {target: "@s", amount: 3, type: "lightning_bolt", attacker: "@a[tag=self,limit=1]"}
# damage @s 7 lightning_bolt by @a[tag=self,limit=1]

# spark tick
scoreboard players add @s zeus.spark 1
scoreboard players operation @s zeus.spark < 3 const
scoreboard players set @s zeus.spark 60