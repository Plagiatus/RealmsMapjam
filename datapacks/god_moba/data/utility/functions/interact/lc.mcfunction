advancement revoke @s only utility:lc

tag @s add utils.interact.lc
tag @s add utils.interact.c

function utility:interact/find_entity with entity @s

tag @s remove utils.interact.lc
tag @s remove utils.interact.c
