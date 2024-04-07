execute anchored eyes positioned ^ ^ ^0.5 run summon arrow ~ ~ ~ {Tags:["projectile"]}
function utility:shoot_facing {source: "@s", target: "@e[tag=projectile,limit=1]", force: 1}
tag @e remove projectile