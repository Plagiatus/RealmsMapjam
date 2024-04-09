execute anchored eyes positioned ^ ^ ^0.5 run summon trident ~ ~ ~ {Tags:["projectile"]}
data modify entity @e[tag=projectile,limit=1] Owner set from entity @s UUID
function utility:shoot_facing {source: "@s", target: "@e[tag=projectile,limit=1]", force: 2}
tag @e remove projectile