scoreboard players remove @s poseidon.dolphin 1

scoreboard players operation @s tmp = @s poseidon.dolphin
scoreboard players operation @s tmp %= 10 const

tag @s add self
execute if score @s tmp matches 0 run function moba:game/abilities/god/1/4_dolphin
tag @s remove self