kill @e[type=!player,tag=!keep]

# capture points
summon marker -6 65 -23 {Tags:["capture","locked", "large", "t2"]}

summon marker -47 68 -82 {Tags:["capture","locked", "medium", "t2", "lane1"]}
summon marker 41 68 -82 {Tags:["capture","locked", "medium", "t2", "lane2"]}

summon marker -45 70 -136 {Tags:["capture","locked", "small", "t2", "lane1"]}
summon marker 43 70 -136 {Tags:["capture","locked", "small", "t2", "lane2"]}

summon marker -45 70 -168 {Tags:["capture", "small", "lane1"]}
summon marker 43 70 -168 {Tags:["capture", "small", "lane2"]}

summon marker -45 70 -204 {Tags:["capture", "small", "lane1"]}
summon marker 43 70 -204 {Tags:["capture", "small", "lane2"]}

summon marker -45 70 -236 {Tags:["capture","locked", "small", "t1", "lane1"]}
summon marker 43 70 -236 {Tags:["capture","locked", "small", "t1", "lane2"]}

summon marker -47 68 -294 {Tags:["capture","locked", "medium", "t1", "lane1"]}
summon marker 41 68 -294 {Tags:["capture","locked", "medium", "t1", "lane2"]}

summon marker -6 65 -359 {Tags:["capture","locked", "large", "t1"]}

scoreboard players set #max id 0
execute as @e[tag=capture,type=marker,x=-6,y=65,z=-359,sort=nearest] at @s run function moba:game/setup/capture


# beacons
summon marker 48 86 -72 {Tags:["beacon"]}
summon marker 48 85 -128 {Tags:["beacon"]}
summon marker 48 85 -160 {Tags:["beacon"]}
summon marker 48 85 -202 {Tags:["beacon"]}
summon marker 48 85 -234 {Tags:["beacon"]}
summon marker 48 85 -290 {Tags:["beacon"]}

summon marker -40 86 -72 {Tags:["beacon"]}
summon marker -40 85 -128 {Tags:["beacon"]}
summon marker -40 85 -160 {Tags:["beacon"]}
summon marker -40 85 -202 {Tags:["beacon"]}
summon marker -40 85 -234 {Tags:["beacon"]}
summon marker -40 85 -290 {Tags:["beacon"]}

setblock 48 86 -72 cyan_stained_glass
setblock 48 85 -128 cyan_stained_glass
setblock 48 85 -160 white_stained_glass
setblock 48 85 -202 white_stained_glass
setblock 48 85 -234 red_stained_glass
setblock 48 85 -290 red_stained_glass

setblock -40 86 -72 cyan_stained_glass
setblock -40 85 -128 cyan_stained_glass
setblock -40 85 -160 white_stained_glass
setblock -40 85 -202 white_stained_glass
setblock -40 85 -234 red_stained_glass
setblock -40 85 -290 red_stained_glass