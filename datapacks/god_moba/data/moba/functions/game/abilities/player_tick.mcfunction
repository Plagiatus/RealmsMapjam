# executed as all non-spectator players

effect give @s speed 1 0 true

# player only abilities
execute as @s[scores={poseidon.sea_squall=1..}] run function moba:game/abilities/god/1/2_tick
execute as @s[scores={poseidon.dolphin=1..}] run function moba:game/abilities/god/1/4_tick
execute as @s[scores={zeus.king_of_gods=1..}] run function moba:game/abilities/god/2/4_tick
execute as @a[scores={drank_honey=1..},team=t1] run function moba:game/abilities/back_to_base_t1
execute as @a[scores={drank_honey=1..},team=t2] run function moba:game/abilities/back_to_base_t2

# count down all weapon cooldowns
scoreboard players remove @s cd.1 1
scoreboard players remove @s cd.2 1
scoreboard players remove @s cd.3 1
scoreboard players remove @s cd.4 1

# enable weapons if they're now off cooldown
execute if score @s cd.1 matches 0 run function moba:game/abilities/enable {slot:0, ability:1}
execute if score @s cd.2 matches 0 run function moba:game/abilities/enable {slot:1, ability:2}
execute if score @s cd.3 matches 0 run function moba:game/abilities/enable {slot:2, ability:3}
execute if score @s cd.4 matches 0 run function moba:game/abilities/enable {slot:3, ability:4}

# if player is holding a weapon that is on cooldown, tell them
# also, reset their carrot score
scoreboard players set #showingCD tmp 0
execute store result score #ability tmp run data get entity @s SelectedItem.tag.ability
execute if score #ability tmp matches 1 if score @s cd.1 matches 1.. run function moba:game/abilities/cooldown {cd:1}
execute if score #ability tmp matches 2 if score @s cd.2 matches 1.. run function moba:game/abilities/cooldown {cd:2}
execute if score #ability tmp matches 3 if score @s cd.3 matches 1.. run function moba:game/abilities/cooldown {cd:3}
execute if score #ability tmp matches 4 if score @s cd.4 matches 1.. run function moba:game/abilities/cooldown {cd:4}
# hide the actionbar if not relevant anymore
execute if score #showingCD tmp matches 0 run title @s actionbar [""]

# if player didn't use a weapon, stop here
execute unless score @s carrot_on_a_stick_used matches 1.. run return 0

scoreboard players reset @s carrot_on_a_stick_used

# check which god and which ability was used
execute store result storage moba:tmp god int 1 run scoreboard players get @s god
execute store result storage moba:tmp ability int 1 run scoreboard players get #ability tmp
execute store result storage moba:tmp slot int 1 run scoreboard players remove #ability tmp 1

# automatically choose the correct function to call and set the cooldown
function moba:game/abilities/god/check with storage moba:tmp