# call ability function
$function moba:game/abilities/god/$(god)/$(ability)

# set the correct cooldown
$scoreboard players operation @s cd.$(ability) = #god$(god) cd.$(ability)

# disable the item
function moba:game/abilities/disable with storage moba:tmp