clear @s

# get the players god score into a storage so we can use it as a variable in the next function to automatically choose the correct function
execute store result storage moba:tmp god int 1 run scoreboard players get @s god
function moba:game/setup/god/items with storage moba:tmp