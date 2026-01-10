tellraw @a {"text":"Game starting","bold":true}

tag @a remove Mole
tag @a remove Dead

# Speedrun exclusion
execute unless score mode Molehunt matches 2 run gamerule allow_entering_nether_using_portals false

# setup
effect clear @a
effect give @a minecraft:saturation 1 255
gamerule show_advancement_messages false
gamemode survival @a
difficulty normal
worldborder set 1000 6s
scoreboard players reset @a Deaths
gamerule advance_time true
xp set @a 0 levels
xp set @a 0 points
kill @e[type=item]

schedule function molehunt:setup/teleportplayers 10s
schedule function molehunt:setup/buildup 15s
schedule function molehunt:setup/announcerole 20s
schedule function molehunt:setup/endgrace 180s
