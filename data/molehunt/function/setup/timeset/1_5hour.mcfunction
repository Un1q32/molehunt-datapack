# Set game timer to start at 1:30 (default)
scoreboard players set minutes Timer 30
scoreboard players set hours Timer 1

tellraw @a ["",{"selector":"@s","bold":true},{"text":" set timer to 1:30","bold":true}]

function molehunt:setup/start_button
