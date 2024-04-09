$execute unless block ^ ^ ^$(step_size) #utility:no_raycast run return run function $(function)

scoreboard players remove #steps tmp 1
$execute if score #steps tmp matches 0 run function $(function)
$execute if score #steps tmp matches 1.. positioned ^ ^ ^$(step_size) run function utility:raycast/helper/block with storage util:ray