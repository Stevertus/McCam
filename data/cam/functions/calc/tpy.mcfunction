#######
# Compiled from data/cam/functions/tpX.mcscript
# to .//data/cam/functions/calc/tpy.mcfunction
#
# Generated by Minecraft Script for 1.13
######
scoreboard players set camI camI 0
execute if score camI camI < camDY camPosD run function cam:mcscript/tpy1
scoreboard players set camI camI 0
execute if score camI camI > camDY camPosD run function cam:mcscript/tpy2