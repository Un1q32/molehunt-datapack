tellraw @s {text:"[Configure Time]",color:"green",click_event:{"action":"run_command","command":"/trigger TimeSettingsDisplay set 1"}}

tellraw @s ""

tellraw @s {text:"[Configure Moles]",color:"yellow",click_event:{"action":"run_command","command":"/trigger MoleSettingsDisplay set 1"}}

tellraw @s ""

tellraw @s {text:"[Configure Border]",color:"red",click_event:{"action":"run_command","command":"/trigger BorderSettingsDisplay set 1"}}

tellraw @s ""

tellraw @s {text:"[Start Game]",color:"gold",click_event:{"action":"run_command","command":"/trigger Molehunt set 1"}}
scoreboard players set @s MainSettingsDisplay 0
