data merge entity @s {AngerTime: 600}
data modify entity @s Owner set from entity @a[tag=self,limit=1] UUID
execute if entity @a[tag=self,limit=1,team=t2] run data modify entity @s CollarColor set value 9b
scoreboard players set @s hades.dog 200
tag @s add ability
tag @s add hades.dog

execute if entity @a[tag=self,limit=1,team=t1] run team join t1 @s
execute if entity @a[tag=self,limit=1,team=t2] run team join t2 @s
