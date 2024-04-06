kill @e[type=!player]

summon marker -6 65 -23 {Tags:["capture","locked", "large", "t1"]}
# summon marker 140 0 0 {Tags:["capture","locked", "large", "t2"]}

summon marker -47 68 -82 {Tags:["capture","locked", "medium", "t1", "lane1"]}
summon marker -45 70 -136 {Tags:["capture","locked", "small", "t1", "lane1"]}

summon marker -45 70 -168 {Tags:["capture", "small", "lane1"]}

# summon marker 90 0 30 {Tags:["capture","locked", "small", "t2", "lane1"]}
# summon marker 110 0 30 {Tags:["capture","locked", "medium", "t2", "lane1"]}

summon marker 41 68 -82 {Tags:["capture","locked", "medium", "t1", "lane2"]}
summon marker 43 70 -136 {Tags:["capture","locked", "small", "t1", "lane2"]}

summon marker 43 70 -168 {Tags:["capture", "small", "lane2"]}

# summon marker 90 0 -30 {Tags:["capture","locked", "small", "t2", "lane2"]}
# summon marker 110 0 -30 {Tags:["capture","locked", "medium", "t2", "lane2"]}

scoreboard players set #max id 0
execute as @e[tag=capture,type=marker,x=-6,y=65,z=-23,sort=nearest] at @s run function moba:game/setup/capture
