#######
# Compiled from data/cam/functions/particles.mcscript
# to .//data/cam/functions/particles.mcfunction
#
# Generated by Minecraft Script for 1.13
######
tp @s ^ ^ ^0.4 facing entity @e[tag=cam2,sort=nearest,limit=1]
particle minecraft:dragon_breath ^ ^ ^0.5 0 0 0 0 5 force @a[gamemode=creative,tag=!camNoParticles,tag=!camRunning]
execute if entity @e[tag=cam2,distance=..1] run tp @s @e[tag=cam1,limit=1,sort=nearest]