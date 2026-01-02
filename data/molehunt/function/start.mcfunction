scoreboard players set @a Deaths 0
scoreboard players set @a Molehunt 0

execute in minecraft:overworld run worldborder set 1000
execute in minecraft:the_nether run worldborder set 1000
execute in minecraft:the_end run worldborder set 1000

time set 0
clear @a

gamerule show_advancement_messages false
gamerule show_death_messages false
gamerule locator_bar true
gamerule allow_entering_nether_using_portals false
gamerule pvp false
execute as @a run attribute @s minecraft:waypoint_receive_range base reset

function molehunt:choose_moles

team join alive @a
give @a minecraft:cooked_beef 64
team modify alive nametagVisibility never
title @a title {text:"You are...",color:"yellow",bold:true}
schedule function molehunt:announce_role 3s
schedule function molehunt:end_grace 180s
