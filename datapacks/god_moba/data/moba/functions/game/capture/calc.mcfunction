$execute at @a[dx=$(full),dy=6,dz=$(full),team=t1] run scoreboard players add @s capture 1
$execute at @a[dx=$(full),dy=6,dz=$(full),team=t2] run scoreboard players remove @s capture 1
$execute at @a[dx=$(full),dy=6,dz=$(full),team=t1,scores={king_of_gods=1..}] run scoreboard players add @s capture 1
$execute at @a[dx=$(full),dy=6,dz=$(full),team=t2,scores={king_of_gods=1..}] run scoreboard players remove @s capture 1