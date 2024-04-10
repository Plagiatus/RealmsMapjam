scoreboard players remove @s poseidon.sea_squall 1
particle rain ~ ~ ~ 2 0.2 2 0 200 force
execute if entity @s[team=t1] run scoreboard players remove @e[team=t2,distance=..4] poseidon.sea_squall_timer 1
execute if entity @s[team=t2] run scoreboard players remove @e[team=t1,distance=..4] poseidon.sea_squall_timer 1
execute if entity @s[team=t1] run scoreboard players remove @e[tag=junglemonster,distance=..4] poseidon.sea_squall_timer 1
execute if entity @s[team=t2] run scoreboard players remove @e[tag=junglemonster,distance=..4] poseidon.sea_squall_timer 1