kill @e[tag=!keep,type=marker]
kill @e[tag=junglemonster]
kill @e[tag=shop]

# capture points
summon marker -6 65 -23 {Tags: ["capture", "locked", "large", "t2"]}

summon marker -47 68 -82 {Tags: ["capture", "locked", "medium", "t2", "lane1"]}
summon marker 41 68 -82 {Tags: ["capture", "locked", "medium", "t2", "lane2"]}

summon marker -45 70 -136 {Tags: ["capture", "locked", "small", "t2", "lane1"]}
summon marker 43 70 -136 {Tags: ["capture", "locked", "small", "t2", "lane2"]}

summon marker -45 70 -168 {Tags: ["capture", "small", "lane1"]}
summon marker 43 70 -168 {Tags: ["capture", "small", "lane2"]}

summon marker -45 70 -204 {Tags: ["capture", "small", "lane1"]}
summon marker 43 70 -204 {Tags: ["capture", "small", "lane2"]}

summon marker -45 70 -236 {Tags: ["capture", "locked", "small", "t1", "lane1"]}
summon marker 43 70 -236 {Tags: ["capture", "locked", "small", "t1", "lane2"]}

summon marker -47 68 -294 {Tags: ["capture", "locked", "medium", "t1", "lane1"]}
summon marker 41 68 -294 {Tags: ["capture", "locked", "medium", "t1", "lane2"]}

summon marker -6 65 -359 {Tags: ["capture", "locked", "large", "t1"]}

scoreboard players set #max id 0
execute as @e[tag=capture,type=marker,x=-6,y=65,z=-359,sort=nearest] at @s run function moba:game/setup/capture


# beacons
summon marker 48 86 -72 {Tags: ["beacon"]}
summon marker 48 85 -128 {Tags: ["beacon"]}
summon marker 48 85 -160 {Tags: ["beacon"]}
summon marker 48 85 -202 {Tags: ["beacon"]}
summon marker 48 85 -234 {Tags: ["beacon"]}
summon marker 48 86 -290 {Tags: ["beacon"]}

summon marker -40 86 -72 {Tags: ["beacon"]}
summon marker -40 85 -128 {Tags: ["beacon"]}
summon marker -40 85 -160 {Tags: ["beacon"]}
summon marker -40 85 -202 {Tags: ["beacon"]}
summon marker -40 85 -234 {Tags: ["beacon"]}
summon marker -40 86 -290 {Tags: ["beacon"]}

setblock 48 86 -72 cyan_stained_glass
setblock 48 85 -128 cyan_stained_glass
setblock 48 85 -160 white_stained_glass
setblock 48 85 -202 white_stained_glass
setblock 48 85 -234 red_stained_glass
setblock 48 86 -290 red_stained_glass

setblock -40 86 -72 cyan_stained_glass
setblock -40 85 -128 cyan_stained_glass
setblock -40 85 -160 white_stained_glass
setblock -40 85 -202 white_stained_glass
setblock -40 85 -234 red_stained_glass
setblock -40 86 -290 red_stained_glass

# jungle mobs
summon marker -7 70 -299 {Tags: ["jungle", "ws"]}
summon marker 11 71 -251 {Tags: ["jungle", "ravager"]}
summon marker 27 72 -224 {Tags: ["jungle", "wolves"]}
summon marker -10 72 -232 {Tags: ["jungle", "bz"]}

summon marker 4 72 -181 {Tags: ["jungle", "wither"]}

summon marker -15 70 -63 {Tags: ["jungle", "ws"]}
summon marker -3 71 -111 {Tags: ["jungle", "ravager"]}
summon marker -19 72 -138 {Tags: ["jungle", "wolves"]}
summon marker 18 72 -130 {Tags: ["jungle", "bz"]}

scoreboard players set #max jungleid 1
execute as @e[tag=jungle] at @s run function moba:game/setup/jungle


# villagers

summon villager 9.5 66 -377.5 {Tags:["shop"],VillagerData:{level:5,profession:"minecraft:cleric",type:"minecraft:swamp"},CustomName:'{"text":"Shopkeeper"}',Rotation:[0,45],NoAI:1,Invulnerable:1,Silent:1,Offers:{Recipes:[\
    {rewardExp:0b,sell:{id:"minecraft:splash_potion",Count:1,tag:{Potion:"strong_healing"}},buy:{id:"minecraft:emerald",Count:10},maxUses:9999999},\
    {rewardExp:0b,sell:{id:"minecraft:splash_potion",Count:1,tag:{Potion:"harming",custom_potion_effects:[{id:"harming",amplifier:1}]}},buy:{id:"minecraft:emerald",Count:10},maxUses:9999999},\
    {rewardExp:0b,sell:{id:"minecraft:splash_potion",Count:1,tag:{display:{Name:'{"text":Splash Potion of Poison","italic":false}'},custom_potion_effects:[{id:"poison",amplifier:1,duration:100}],CustomPotionColor:5620309}},buy:{id:"minecraft:emerald",Count:10},maxUses:9999999},\
    {rewardExp:0b,sell:{id:"minecraft:potion",Count:1,tag:{display:{Name:'{"text":"Potion of Swiftness","italic":false}'},custom_potion_effects:[{id:"speed",amplifier:1,duration:600}],CustomPotionColor:2285027}},buy:{id:"minecraft:emerald",Count:10},maxUses:9999999},\
    {rewardExp:0b,sell:{id:"minecraft:honey_bottle",Count:1,tag:{display:{Name:'{"text":"Warp Back To Base","italic":false}'}}},buy:{id:"minecraft:emerald",Count:10},maxUses:9999999},\
    {rewardExp:0b,sell:{id:"minecraft:milk_bucket",Count:1},buy:{id:"minecraft:emerald",Count:15},maxUses:9999999},\
    {rewardExp:0b,sell:{id:"minecraft:golden_apple",Count:1},buy:{id:"minecraft:emerald",Count:32},maxUses:9999999},\
    {rewardExp:0b,sell:{id:"minecraft:apple",Count:1,tag:{display:{Name:'{"text":"Grilled Cheese","italic":false}'}}},buy:{id:"minecraft:emerald",Count:64},maxUses:9999999}\
]}}

summon villager 0.5 66 16.5 {Tags:["shop"],VillagerData:{level:5,profession:"minecraft:cleric",type:"minecraft:swamp"},CustomName:'{"text":"Shopkeeper"}',Rotation:[0,45],NoAI:1,Invulnerable:1,Silent:1,Offers:{Recipes:[\
    {rewardExp:0b,sell:{id:"minecraft:splash_potion",Count:1,tag:{Potion:"strong_healing"}},buy:{id:"minecraft:emerald",Count:10},maxUses:9999999},\
    {rewardExp:0b,sell:{id:"minecraft:splash_potion",Count:1,tag:{Potion:"harming",custom_potion_effects:[{id:"harming",amplifier:1}]}},buy:{id:"minecraft:emerald",Count:10},maxUses:9999999},\
    {rewardExp:0b,sell:{id:"minecraft:splash_potion",Count:1,tag:{display:{Name:'{"text":Splash Potion of Poison","italic":false}'},custom_potion_effects:[{id:"poison",amplifier:1,duration:100}],CustomPotionColor:5620309}},buy:{id:"minecraft:emerald",Count:10},maxUses:9999999},\
    {rewardExp:0b,sell:{id:"minecraft:potion",Count:1,tag:{display:{Name:'{"text":"Potion of Swiftness","italic":false}'},custom_potion_effects:[{id:"speed",amplifier:1,duration:600}],CustomPotionColor:2285027}},buy:{id:"minecraft:emerald",Count:10},maxUses:9999999},\
    {rewardExp:0b,sell:{id:"minecraft:honey_bottle",Count:1,tag:{display:{Name:'{"text":"Warp Back To Base","italic":false}'}}},buy:{id:"minecraft:emerald",Count:10},maxUses:9999999},\
    {rewardExp:0b,sell:{id:"minecraft:milk_bucket",Count:1},buy:{id:"minecraft:emerald",Count:15},maxUses:9999999},\
    {rewardExp:0b,sell:{id:"minecraft:golden_apple",Count:1},buy:{id:"minecraft:emerald",Count:32},maxUses:9999999},\
    {rewardExp:0b,sell:{id:"minecraft:apple",Count:1,tag:{display:{Name:'{"text":"Grilled Cheese","italic":false}'}}},buy:{id:"minecraft:emerald",Count:64},maxUses:9999999}\
]}}