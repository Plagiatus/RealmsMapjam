$tp @e[scores={jungleid=$(id)},distance=10..,tag=junglemonster] @s

$execute if entity @e[scores={jungleid=$(id)},distance=..10,tag=junglemonster] run return 1
return 0