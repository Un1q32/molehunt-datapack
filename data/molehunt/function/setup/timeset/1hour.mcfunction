# Set game timer to start at 1 hour
scoreboard players set minutes Timer 0
scoreboard players set hours Timer 1

tellraw @a ["",{"selector":"@s","bold":true},{"text":" set timer to 1:00","bold":true}]

function molehunt:setup/start_button
