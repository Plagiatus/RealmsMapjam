# tick down cooldown
scoreboard players remove @s[scores={weapon.cooldown=1..}] weapon.cooldown 1

execute if score @s carrot_on_a_stick_used matches 1.. run function moba:weapon/right_click