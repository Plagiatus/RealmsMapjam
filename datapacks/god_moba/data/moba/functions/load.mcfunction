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

team add t1
team add t2
team add spectator

team modify t1 color red
team modify t2 color dark_aqua

scoreboard objectives add const dummy
scoreboard players set -1 const -1
scoreboard players set 2 const 2
scoreboard players set 5 const 5
scoreboard players set 20 const 20

function moba:weapon/load
function moba:game/abilities/setup