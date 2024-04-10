particle dust_color_transition 0.184 0.886 0.902 1.0 0.051 0.235 0.239 ~ ~ ~ 0.5 0.5 0.5 0 100 force

execute if entity @s[team=t1] positioned ~-.5 ~-.5 ~-.5 as @e[team=t2,dx=0,dy=0,dz=0] run function utility:damage {target: "@s", amount: 5, type: "wither", attacker: "@a[tag=self,limit=1]"}
execute if entity @s[team=t2] positioned ~-.5 ~-.5 ~-.5 as @e[team=t1,dx=0,dy=0,dz=0] run function utility:damage {target: "@s", amount: 5, type: "wither", attacker: "@a[tag=self,limit=1]"}
execute if entity @s[team=t1] positioned ~-.5 ~-.5 ~-.5 as @e[team=t2,dx=0,dy=0,dz=0] run scoreboard players set @s hades.downward 160
execute if entity @s[team=t2] positioned ~-.5 ~-.5 ~-.5 as @e[team=t1,dx=0,dy=0,dz=0] run scoreboard players set @s hades.downward 160