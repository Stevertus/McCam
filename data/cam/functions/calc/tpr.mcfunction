#######
# Compiled from data/cam/functions/tpX.mcscript
# to .//data/cam/functions/calc/tpr.mcfunction
#
# Generated by Minecraft Script for 1.13
######
scoreboard players set camI camI 0
execute if score camI camI < camDRv camPosD run function cam:mcscript/tpr1
scoreboard players set camI camI 0
execute if score camI camI > camDRv camPosD run function cam:mcscript/tpr2
