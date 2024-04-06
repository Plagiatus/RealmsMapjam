kill @e[type=!player]

summon marker 0 0 0 {Tags:["capture","locked", "large"]}
summon marker 30 0 30 {Tags:["capture","locked", "medium"]}
summon marker 50 0 30 {Tags:["capture","locked", "small"]}
summon marker 70 0 30 {Tags:["capture", "small"]}

summon marker 30 0 -30 {Tags:["capture","locked", "medium"]}
summon marker 50 0 -30 {Tags:["capture","locked", "small"]}
summon marker 70 0 -30 {Tags:["capture", "small"]}

execute as @e[tag=capture,type=marker] at @s run function moba:game/setup/capture