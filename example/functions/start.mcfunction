#######
# Compiled from data/exam/functions/main.mcscript
# to .//data/exam/functions/start.mcfunction
#
# Generated by Minecraft Script for 1.13
######
tag @s add camNoParticles
tag @s add camNoText
scoreboard players set @s camTime 5
execute positioned -469 70 1198 rotated -90 60 run function cam:pos1
execute positioned -410 93 1198 rotated -147 26 run function cam:pos2

tag @s add path1

function cam:start
