scoreboard players set @a Deaths 0
scoreboard players set @a Molehunt 0

worldborder set 1000

time set 0
clear @a
kill @e[type=item]

gamerule announceAdvancements false
gamerule showDeathMessages false
gamerule locatorBar true
gamerule allowEnteringNetherUsingPortals true
gamerule pvp false
execute as @a[tag=!mole] run attribute @s minecraft:waypoint_receive_range base reset

function molehunt:choose_moles

team join alive @a
give @a minecraft:cooked_beef 64
team modify alive nametagVisibility never
title @a title {text:"You are...",color:"yellow",bold:true}
schedule function molehunt:announce_role 3s
schedule function molehunt:end_grace 180s
schedule function molehunt:open_portal 3600s

spreadplayers 0 0 25 300 false @a[team=alive]
