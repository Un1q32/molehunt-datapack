# User sets custom time
tellraw @a ["",{"text":"\nSet the game timer via:","color":"gray"},{"text":"\n\nscoreboard players set minutes Timer #\nscoreboard players set hours Timer #"}]

function molehunt:setup/start_button
