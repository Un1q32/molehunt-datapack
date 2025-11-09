scoreboard players set @a Deaths 0
scoreboard players set @a Molehunt 0

worldborder set 1000

time set 0
clear @a
execute as @a[tag=diedToPlayer] run tag @s remove diedToPlayer
gamerule announceAdvancements false
gamerule showDeathMessages false
gamerule locatorBar false
gamerule doImmediateRespawn true
advancement revoke @a only respawnpoint:death

function molehunt:choose_moles

team join alive @a
give @a minecraft:cooked_beef 64
team modify alive nametagVisibility never
team modify alive friendlyFire false
title @a title {text:"You are...",color:"yellow",bold:true}
schedule function molehunt:announce_role 3s
schedule function molehunt:end_grace 180s
schedule function molehunt:worldborder 1800s

spreadplayers 0 0 25 300 false @a[team=alive]
