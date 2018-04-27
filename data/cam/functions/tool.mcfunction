
tag @a[gamemode=creative,nbt={SelectedItem:{id:"minecraft:ender_eye",tag:{Unbreakable:1b}}}] add camHolding
tag @a[nbt=!{SelectedItem:{id:"minecraft:ender_eye",tag:{Unbreakable:1b}}}] remove camHolding
advancement grant @a[tag=camHolding] only cam:summongui
advancement grant @a[tag=!camHolding] only cam:desummongui
execute as @a[tag=camHolding] run title @s actionbar [{"text":"Duration: ","color":"green"},{"score":{"name":"@s","objective":"camTime"},"color":"gold"},{"text":" seconds","color":"gold"}]
execute as @e[tag=camGui] at @s positioned ~ ~-1 ~ unless entity @p[distance=..2] run tp @s ~ -500 ~
execute as @a[tag=camHolding] at @s positioned ~ ~1 ~ run tp @e[tag=camGuiStand,distance=..2,sort=nearest,limit=1] ^ ^ ^1.5
execute as @e[tag=camGuiCart,scores={camPage=0}] at @s run function cam:gui/gui0
