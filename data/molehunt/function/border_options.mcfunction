tellraw @s [{text:"Current Border Width: "},{"score":{"name":"width","objective":"Border"}}]

tellraw @s {text:"[Increase Width]",color:"green",click_event:{"action":"run_command","command":"/trigger Border set 100"}}

tellraw @s ""

tellraw @s {text:"[Decrease Width]",color:"red",click_event:{"action":"run_command","command":"/trigger Border set -100"}}

tellraw @s ""

tellraw @s {text:"[Go Back]","color":gold,click_event:{"action":"run_command","command":"/trigger MainSettingsDisplay set 1"}}

scoreboard players set @s BorderSettingsDisplay 0
