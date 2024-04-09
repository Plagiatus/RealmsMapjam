execute if score @s[team=t1] poseidon.sea_squall_timer matches ..0 run function utility:damage {target: "@s", amount: 3, type: "drown", attacker: "@a[scores={god=1},distance=..4,limit=1,team=t2]"}
execute if score @s[team=t2] poseidon.sea_squall_timer matches ..0 run function utility:damage {target: "@s", amount: 3, type: "drown", attacker: "@a[scores={god=1},distance=..4,limit=1,team=t1]"}
execute if score @s poseidon.sea_squall_timer matches 2 run effect give @s levitation 1 100
execute if score @s poseidon.sea_squall_timer matches ..0 run effect clear @s levitation
execute if score @s poseidon.sea_squall_timer matches ..0 store result score @s poseidon.sea_squall_timer run random value 15..30