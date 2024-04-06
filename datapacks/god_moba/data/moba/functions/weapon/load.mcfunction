# Sets up for weapons

scoreboard objectives add weapon.cooldown dummy
scoreboard players add @a weapon.cooldown 0

# Weapon constants
scoreboard players set .bolt_cooldown const 20

# Right click detection 
scoreboard objectives add carrot_on_a_stick_used minecraft.used:minecraft.carrot_on_a_stick

# For testing purposes only