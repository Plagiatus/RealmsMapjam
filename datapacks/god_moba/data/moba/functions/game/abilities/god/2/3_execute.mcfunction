execute if score @s zeus.spark matches 1 run effect give @s slowness 3 1 false
execute if score @s zeus.spark matches 2 run effect give @s slowness 3 2 false
execute if score @s zeus.spark matches 3 run effect give @s slowness 3 3 false

execute store result storage moba:tmp dmg.amount float 3 run scoreboard players get @s zeus.spark
data merge storage moba:tmp {dmg:{target:"@s",type: "lightning_bolt", attacker: "@a[tag=self,limit=1]"}}

function utility:damage with storage moba:tmp dmg

scoreboard players set @s zeus.spark 0
scoreboard players set @s zeus.spark_timer 0