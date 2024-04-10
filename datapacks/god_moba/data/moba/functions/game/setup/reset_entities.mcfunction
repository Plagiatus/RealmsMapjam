kill @e[tag=!keep,type=marker]
kill @e[tag=junglemonster]

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
summon marker 48 86 -290 {Tags:["beacon"]}

summon marker -40 86 -72 {Tags:["beacon"]}
summon marker -40 85 -128 {Tags:["beacon"]}
summon marker -40 85 -160 {Tags:["beacon"]}
summon marker -40 85 -202 {Tags:["beacon"]}
summon marker -40 85 -234 {Tags:["beacon"]}
summon marker -40 86 -290 {Tags:["beacon"]}

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
summon marker -7 70 -299 {Tags:["jungle", "ws"]}
summon marker 11 71 -251 {Tags:["jungle", "ravager"]}
summon marker 27 72 -224 {Tags:["jungle", "wolves"]}
summon marker -10 72 -232 {Tags:["jungle", "bz"]}

summon marker 4 72 -181 {Tags:["jungle", "wither"]}

summon marker -15 70 -63 {Tags:["jungle", "ws"]}
summon marker -3 71 -111 {Tags:["jungle", "ravager"]}
summon marker -19 72 -138 {Tags:["jungle", "wolves"]}
summon marker 18 72 -130 {Tags:["jungle", "bz"]}

scoreboard players set #max jungleid 1
execute as @e[tag=jungle] at @s run function moba:game/setup/jungle