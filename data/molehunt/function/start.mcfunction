scoreboard players set @a Deaths 0
scoreboard players set @a Molehunt 0

function molehunt:set_border

time set 0

gamerule announceAdvancements false
gamerule showDeathMessages false
gamerule locatorBar false

function molehunt:choose_moles

team modify alive nametagVisibility never
team modify alive friendlyFire false
title @a title {text:"You are...",color:"yellow",bold:true}
schedule function molehunt:announce_role 3s
schedule function molehunt:end_grace 600s
schedule function molehunt:open_portal 1800s
