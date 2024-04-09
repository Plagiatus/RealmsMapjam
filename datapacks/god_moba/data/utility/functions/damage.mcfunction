$data merge storage util:dmg {target:"$(target)", amount:$(amount), type:"$(type)", attacker:"$(attacker)"}
execute store result score #dmg tmp run data get storage util:dmg amount 100



execute store result storage util:dmg amount float 0.01 run scoreboard players get #dmg tmp
function utility:helper/damage with storage util:dmg