$execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#utility:no_raycast,dx=0,dy=0,dz=0,sort=nearest,limit=1,tag=!self] at @s run return run function $(function)

scoreboard players remove #steps tmp 1
$execute if score #steps tmp matches 1.. positioned ^ ^ ^$(step_size) run function utility:raycast/helper/entity with storage util:ray