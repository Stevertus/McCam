#######
# Compiled from data/cam/functions/poses.mcscript
# to .//data/cam/functions/pos2.mcfunction
#
# Generated by Minecraft Script for 1.13
######
kill @e[tag=cam2]
summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Position 2\"}", Tags: [camPos,cam2],Invisible:1,Marker:1,NoGravity:1,CustomNameVisible:1}
tp @e[tag=cam2] ~ ~ ~ facing ^ ^ ^1
tp @e[tag=camParticle] @e[tag=cam1,limit=1]
execute store result score camX2 camPos run data get entity @e[tag=cam2,sort=nearest,limit=1] Pos[0] 100
execute store result score camY2 camPos run data get entity @e[tag=cam2,sort=nearest,limit=1] Pos[1] 100
execute store result score camZ2 camPos run data get entity @e[tag=cam2,sort=nearest,limit=1] Pos[2] 100
execute store result score camRv2 camPos run data get entity @e[tag=cam2,sort=nearest,limit=1] Rotation[0] 10
execute store result score camR2 camPos run data get entity @e[tag=cam2,sort=nearest,limit=1] Rotation[1] 10
execute as @e[tag=cam2] run function cam:calc/positions
