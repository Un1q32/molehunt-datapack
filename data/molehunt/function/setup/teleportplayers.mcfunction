spreadplayers 0 0 25 300 false @a

execute as @a at @s run playsound minecraft:entity.breeze.land master @s ~ ~ ~ 3
execute as @a at @s run particle minecraft:gust_emitter_large

give @a minecraft:cooked_beef 64

# For PlayerList (so ops can't see when a mole triggers this)
gamerule send_command_feedback false
