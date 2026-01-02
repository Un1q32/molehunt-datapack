execute if score Innocents Alive matches 1.. run title @a title {"text":"Innocents Win!","color":"green"}
execute if score Innocents Alive matches 0 run title @a title {"text":"Moles Win!","color":"red"}

scoreboard objectives remove Alive
scoreboard objectives remove Deaths
scoreboard objectives remove Timer
scoreboard objectives remove Molehunt
team leave @a
team remove alive
team remove spec

tag @a remove mole
tag @a remove inno

gamemode survival @a

worldborder set 59999968

gamerule show_advancement_messages true
gamerule show_death_messages‌ true

scoreboard objectives remove HourSettings
scoreboard objectives remove MinuteSettings
