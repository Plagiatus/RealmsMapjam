execute store result score #t1 tmp if entity @a[team=t1]
execute store result score #t2 tmp if entity @a[team=t2]

execute if score #t1 tmp matches 0 run tellraw @p [{"text": "No players in Team Red. You need players in both teams!", "color": "red"}]
execute if score #t1 tmp matches 0 run return 0
execute if score #t2 tmp matches 0 run tellraw @p [{"text": "No players in Team Blue. You need players in both teams!", "color": "red"}]
execute if score #t2 tmp matches 0 run return 0

execute unless score #t1 tmp = #t2 tmp run tellraw @p [{"text": "Teams are unbalanced. We'll start the game anyways because we ain't gonna police your gaming choices."}]

function moba:game/start