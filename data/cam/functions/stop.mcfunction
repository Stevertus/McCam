execute if entity @s[tag=camRunning,tag=camNotFixed] run execute as @e[tag=camPos] at @s run tp ~ ~-1000 ~
execute if entity @s[tag=camRunning] run gamemode creative @s[tag=camNotFixed]
execute if entity @s[tag=camRunning] as @e[tag=cam1] run data merge entity @s {CustomNameVisible:0}
execute if entity @s[tag=camRunning] as @e[tag=cam2] run data merge entity @s {CustomNameVisible:0}
execute if entity @s[tag=camRunning,tag=!camNoText] run tellraw @s [{"text":"[Cam] ", "color":"gold"},{"text":"Path stopped","color":"red"}]
execute if entity @s[tag=!camRunning,tag=!camNoText] run tellraw @s [{"text":"[Cam] ", "color":"gold"},{"text":"Error: No path running!","color":"dark_red"}]
execute if entity @s[tag=camRunning] run tag @s add camOnStop
execute if entity @s[tag=camRunning] run tag @s remove camRunning
