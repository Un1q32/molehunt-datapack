scoreboard players reset @a
scoreboard players set mode Molehunt 2
tellraw @a ["",{"selector":"@s","bold":true},{"text":" set gamemode to Speedrun","bold":true}]

tellraw @a ["",{"text":"\nStand where you want the portal to spawn\n\n\n \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"[Place it here]","color":"blue","click_event":{"action":"run_command","command":"/function molehunt:setup/speedrun/speedrunspawnportal"}}]
