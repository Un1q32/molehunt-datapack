scoreboard players enable @s HourSettings
scoreboard players enable @s MinuteSettings
tellraw @s [{"text":"Current Time: "},{"score":{"name":"hours2","objective":"Timer"}},{"score":{"name":"hours","objective":"Timer"}},":",{"score":{"name":"minutes2","objective":"Timer"}},{"score":{"name":"minutes","objective":"Timer"}},":",{"score":{"name":"seconds2","objective":"Timer"}},{"score":{"name":"seconds","objective":"Timer"}}]

tellraw @s {text:"[+1 Hour]",color:"green",click_event:{"action":"run_command","command":"/trigger HourSettings set 1"}}
tellraw @s {text:"[+15 Minutes]",color:"green",click_event:{"action":"run_command","command":"/trigger MinuteSettings set 15"}}
tellraw @s {text:"[+5 Minutes]",color:"green",click_event:{"action":"run_command","command":"/trigger MinuteSettings set 5"}}
tellraw @s {text:"[+1 Minutes]",color:"green",click_event:{"action":"run_command","command":"/trigger MinuteSettings set 1"}}
tellraw @s ""
tellraw @s {text:"[-1 Hour]",color:"red",click_event:{"action":"run_command","command":"/trigger HourSettings set -1"}}
tellraw @s {text:"[-15 Minutes]",color:"red",click_event:{"action":"run_command","command":"/trigger MinuteSettings set -15"}}
tellraw @s {text:"[-5 Minutes]",color:"red",click_event:{"action":"run_command","command":"/trigger MinuteSettings set -5"}}
tellraw @s {text:"[-1 Minutes]",color:"red",click_event:{"action":"run_command","command":"/trigger MinuteSettings set -1"}}
scoreboard players set @s TimeSettingsDisplay 0

tellraw @s ""

tellraw @s {"text":"[Go Back]","color":"gold",click_event:{"action":"run_command","command":"/trigger MainSettingsDisplay set 1"}}
