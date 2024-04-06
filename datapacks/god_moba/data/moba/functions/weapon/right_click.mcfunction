execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:100}}}] as @s run function moba:weapon/bolt

# reset click detection
scoreboard players reset @s carrot_on_a_stick_used