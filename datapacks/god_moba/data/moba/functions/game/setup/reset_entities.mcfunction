kill @e[type=!player]

summon marker 0 0 0 {Tags:["capture","locked", "large", "t1"]}
summon marker 140 0 0 {Tags:["capture","locked", "large", "t2"]}

summon marker 30 0 30 {Tags:["capture","locked", "medium", "t1", "lane1"]}
summon marker 50 0 30 {Tags:["capture","locked", "small", "t1", "lane1"]}

summon marker 70 0 30 {Tags:["capture", "small", "lane1"]}

summon marker 90 0 30 {Tags:["capture","locked", "small", "t2", "lane1"]}
summon marker 110 0 30 {Tags:["capture","locked", "medium", "t2", "lane1"]}

summon marker 30 0 -30 {Tags:["capture","locked", "medium", "t1", "lane2"]}
summon marker 50 0 -30 {Tags:["capture","locked", "small", "t1", "lane2"]}

summon marker 70 0 -30 {Tags:["capture", "small", "lane2"]}

summon marker 90 0 -30 {Tags:["capture","locked", "small", "t2", "lane2"]}
summon marker 110 0 -30 {Tags:["capture","locked", "medium", "t2", "lane2"]}

scoreboard players set #max id 0
execute as @e[tag=capture,type=marker,x=0,y=0,z=0,sort=nearest] at @s run function moba:game/setup/capture
