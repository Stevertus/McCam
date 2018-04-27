advancement revoke @s only cam:desummongui
summon minecraft:armor_stand ^ ^ ^0.5 {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,CustomName:"{\"text\":\"1.13 Camera Pack\"}",NoGravity:1b,Silent:1b,Tags:[camGui, camGuiCart]}],Silent:1b,Tags:[camGui, camGuiStand]}
scoreboard players set @e[tag=camGuiCart] camPage 0
team add camNoCol
team option camNoCol collisionRule never
team join camNoCol @e[tag=camGuiCart]
function cam:gui/load0
