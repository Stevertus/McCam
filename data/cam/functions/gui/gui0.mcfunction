#############
# Page 1 of 1
# Generated using thecamGUIGenerator by Stevertus
# get it at www.stevertus.ga/tools/gui
#
# execute this function as the minecart chest!
#############
# item 0 on slot 1 || tube_coral
execute store result score @s camGUI run data get entity @s Items[0].Slot
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 1 run clear @p minecraft:tube_coral{Unbreakable:1, display: {"Name": "{\"text\":\"Set position 1\"}"}} 2
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 1 as @p[tag=camHolding,distance=..3] at @s run function cam:pos1
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 1 run tp @s ~ -500 ~
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 1 run kill @s
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 1 run tag @s add camUsed
scoreboard players reset @s camGUI

# item 1 on slot 7 || white_banner
execute store result score @s camGUI run data get entity @s Items[1].Slot
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 7 run clear @p minecraft:white_banner{Unbreakable:1, display: {"Name": "{\"text\":\"+ 1sec\"}"}} 2
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 7 as @p[tag=camHolding,distance=..3] run scoreboard players add @s[scores={camTime=..100}] camTime 1
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 7 run function cam:calc/positions
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 7 run tag @s add camUsed
scoreboard players reset @s camGUI

# item 2 on slot 12 || green_stained_glass_pane
execute store result score @s camGUI run data get entity @s Items[2].Slot
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 12 run clear @p minecraft:green_stained_glass_pane{Unbreakable:1, display: {"Name": "{\"text\":\"Start camera\"}"}} 2
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 12 as @p[tag=camHolding,distance=..3] at @s run function cam:start
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 12 run tag @s add camUsed
scoreboard players reset @s camGUI

# item 3 on slot 14 || barrier
execute store result score @s camGUI run data get entity @s Items[3].Slot
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 14 run clear @p minecraft:barrier{Unbreakable:1, display: {"Name": "{\"text\":\"Remove Points\"}"}} 2
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 14 run function cam:remove
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 14 run tp @s ~ -500 ~
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 14 run kill @s
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 14 run tag @s add camUsed
scoreboard players reset @s camGUI

# item 4 on slot 16 || white_stained_glass_pane
execute store result score @s camGUI run data get entity @s Items[4].Slot
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 16 run clear @p minecraft:white_stained_glass_pane{Unbreakable:1, display: {"Name": "{\"text\":\"Duration\"}"}} 2
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 16 run tag @s add camUsed
scoreboard players reset @s camGUI

# item 5 on slot 19 || fire_coral
execute store result score @s camGUI run data get entity @s Items[5].Slot
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 19 run clear @p minecraft:fire_coral{Unbreakable:1, display: {"Name": "{\"text\":\"Set position 2\"}"}} 2
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 19 as @p[tag=camHolding,distance=..3] at @s run function cam:pos2
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 19 run tp @s ~ -500 ~
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 19 run kill @s
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 19 run tag @s add camUsed
scoreboard players reset @s camGUI

# item 6 on slot 25 || white_banner
execute store result score @s camGUI run data get entity @s Items[6].Slot
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 25 run clear @p minecraft:white_banner{Unbreakable:1, display: {"Name": "{\"text\":\"- 1sec\"}"}} 2
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 25 as @p[tag=camHolding,distance=..3] run scoreboard players remove @s[scores={camTime=1..}] camTime 1
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 25 run function cam:calc/positions
execute if entity @s[tag=!camUsed] unless score @s camGUI matches 25 run tag @s add camUsed
scoreboard players reset @s camGUI

execute as @s[scores={camPage=0}] at @s run function cam:gui/load0
tag @s remove camUsed
execute as @s[scores={camPage=0}] at @s run function cam:gui/load0
execute store result entity @s Items[4].Count double 1 run scoreboard players get @p camTime
