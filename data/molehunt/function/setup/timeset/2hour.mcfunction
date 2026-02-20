# Set game timer to start at 2 hours
scoreboard players set minutes Timer 0
scoreboard players set hours Timer 2

tellraw @a ["",{"selector":"@s","bold":true},{"text":" set timer to 2:00","bold":true}]

function molehunt:setup/start_button
