data merge entity @s {Tags:["zeus_cloud", "ability"]}
scoreboard players set @s timer 60

execute if entity @a[tag=self,team=t1] run tag @s add t1
execute if entity @a[tag=self,team=t2] run tag @s add t2