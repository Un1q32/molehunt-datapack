
scoreboard players set @a Deaths 0
scoreboard players set @a Molehunt 0

function molehunt:set_border

time set day

gamerule announceAdvancements false
gamerule showDeathMessages false
gamerule locatorBar false

execute store result score Total MoleFrequency run list
scoreboard players operation Moles MoleFrequency = Total MoleFrequency
scoreboard players operation Moles MoleFrequency /= 1in MoleFrequency
execute if score 1in MoleFrequency > Total MoleFrequency run tag @r[tag=!mole,tag=!inno] add mole
execute if score 1in MoleFrequency > Total MoleFrequency run tag @a[tag=!mole,tag=!inno] add inno

function molehunt:choose_moles

team modify alive nametagVisibility never
title @a title {text:"You are...",color:"yellow",bold:true}
schedule function molehunt:announce_role 3s
