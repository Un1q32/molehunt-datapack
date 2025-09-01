tellraw @s [{text:"Moles Frequency: 1 in "},{"score":{"name":"1in","objective":"MoleFrequency"}}]

tellraw @s {text:"[Increase Frequency]",color:"green",click_event:{"action":"run_command","command":"/trigger MoleFrequency add -1"}}

tellraw @s ""

tellraw @s {text:"[Decrease Frequency]",color:"red",click_event:{"action":"run_command","command":"/trigger MoleFrequency add 1"}}

tellraw @s ""

tellraw @s {text:"[Go Back]",color:"gold",click_event:{"action":"run_command","command":"/trigger MainSettingsDisplay set 1"}}

scoreboard players set @s MoleSettingsDisplay 0
