#######
# Compiled from data/cam/functions/tpX.mcscript
# to data/cam/functions/mcscript/foreach2.mcfunction
#
# Generated by Minecraft Script for 1.13
######
tp @s ~ ~ ~
scoreboard players remove camI camI 1
execute if entity @s[tag=!mcscriptStop] if score camI camI > camDY camPosD positioned ~ ~-0.001 ~ run function cam:mcscript/tpy2
tag @s[tag=mcscriptStop] remove mcscriptStop
