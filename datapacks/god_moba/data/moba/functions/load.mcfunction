scoreboard objectives add status dummy
scoreboard objectives add settings dummy
scoreboard objectives add timer dummy
scoreboard objectives add capture dummy
scoreboard objectives add max_capture dummy
scoreboard objectives add min_capture dummy
scoreboard objectives add size dummy
scoreboard objectives add tmp dummy
scoreboard objectives add id dummy
scoreboard objectives add lane dummy
scoreboard objectives add god dummy

scoreboard objectives add cd.1 dummy
scoreboard objectives add cd.2 dummy
scoreboard objectives add cd.3 dummy
scoreboard objectives add cd.4 dummy

scoreboard objectives add leave custom:leave_game
scoreboard objectives add gameId dummy

team add t1
team add t2
team add spectator

team modify t1 color red
team modify t2 color dark_aqua
team modify t1 friendlyFire false
team modify t2 friendlyFire false

scoreboard objectives add const dummy
scoreboard players set -1 const -1
scoreboard players set 2 const 2
scoreboard players set 3 const 3
scoreboard players set 5 const 5
scoreboard players set 10 const 10
scoreboard players set 20 const 20

scoreboard players add #game gameId 1

function moba:game/abilities/setup