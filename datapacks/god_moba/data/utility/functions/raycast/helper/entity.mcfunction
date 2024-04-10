$execute if entity @s[team=t1] positioned ~-0.5 ~-0.5 ~-0.5 as @e[team=t2,type=!#utility:no_raycast,dx=0,dy=0,dz=0,sort=nearest,limit=1,tag=!self] at @s run return run function $(function)
$execute if entity @s[team=t2] positioned ~-0.5 ~-0.5 ~-0.5 as @e[team=t1,type=!#utility:no_raycast,dx=0,dy=0,dz=0,sort=nearest,limit=1,tag=!self] at @s run return run function $(function)
$function $(step_function)

scoreboard players remove #steps tmp 1
$execute if score #steps tmp matches 0 if score #always tmp matches 1.. positioned ^ ^ ^$(step_size) run function $(function)
$execute if score #steps tmp matches 1.. positioned ^ ^ ^$(step_size) if block #utility:no_raycast run function utility:raycast/helper/entity with storage util:ray
$execute if score #steps tmp matches 1.. positioned ^ ^ ^$(step_size) unless block #utility:no_raycast if score #always tmp matches 1.. run function $(function)