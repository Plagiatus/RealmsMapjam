# particle and sound
particle minecraft:angry_villager ~ ~ ~ 1 1 1 1 10 force
playsound entity.lightning_bolt.impact master @a

# visual lightning (teleport away to avoid damage)
summon lightning_bolt ~ ~ ~ {Tags:["thunderbolt"]}
tp @e[tag=thunderbolt] 0 -64 0

# damage
damage @s 7 lightning_bolt
