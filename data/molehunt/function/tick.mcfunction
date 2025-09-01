execute if score start Molehunt matches 1 run function molehunt:timer

execute if score start Molehunt matches 0 run function molehunt:settings

execute as @a if score @s Molehunt matches 1 if score start Molehunt matches 0 run function molehunt:start

execute as @a if score @s Restart matches 1 run function molehunt:load