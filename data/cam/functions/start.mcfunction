#######
# Compiled from data/cam/functions/remove.mcscript
# to .//data/cam/functions/remove.mcfunction
#
# Generated by Minecraft Script for 1.13
######
tag @s add camRunning
execute as @e[tag=cam1] run data merge entity @s {CustomNameVisible:0}
execute as @e[tag=cam2] run data merge entity @s {CustomNameVisible:0}
function cam:calc/positions
execute if entity @s[tag=!camNotFixed] run summon area_effect_cloud ~ ~ ~ {Duration: 2147483647, Tags: [camPos,camRunner]}
tp @e[tag=camRunner] @e[limit=1,sort=nearest,tag=cam1]
tp @s @e[limit=1,sort=nearest,tag=cam1]
scoreboard players operation camTime camTime *= 10 camPos
execute if entity @s[tag=camNotFixed] as @e[tag=camPos,tag=!camRunner] at @s run tp ~ ~1000 ~
gamemode spectator @s[tag=camNotFixed]
tellraw @s[tag=!camNoText] [{"text":"[Cam] ", "color":"gold"},{"text":"Path started! It will take you ","color":"green"},{"score":{"name":"@s","objective":"camTime"}},{"text":" seconds"}]
