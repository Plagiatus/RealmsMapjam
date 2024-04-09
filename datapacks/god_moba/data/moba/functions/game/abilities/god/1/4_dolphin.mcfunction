
summon dolphin ~ ~1 ~ {Tags:["projectile", "ability", "poseidon.dolphin"], Moistness: 2400, Invulnerable:1b}

execute if entity @s[team=t1] anchored eyes facing entity @e[limit=1,sort=random,distance=..10,team=t2] eyes rotated ~ ~ run function utility:shoot_facing {source: "@s", target: "@e[tag=projectile,limit=1]", force: 2}
execute if entity @s[team=t2] anchored eyes facing entity @e[limit=1,sort=random,distance=..10,team=t1] eyes rotated ~ ~ run function utility:shoot_facing {source: "@s", target: "@e[tag=projectile,limit=1]", force: 2}

execute if entity @s[team=t1] run team join t1 @e[tag=projectile]
execute if entity @s[team=t2] run team join t2 @e[tag=projectile]

tag @e remove projectile
