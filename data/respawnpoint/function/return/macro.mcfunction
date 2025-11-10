$tp @s $(x) $(y) $(z) $(rot_y) $(rot_x)
execute unless entity @s[tag=converting] if score @s Deaths matches 1 run function respawnpoint:convertmole
$execute positioned $(x) $(y) $(z) if score @s Deaths matches 2 run function respawnpoint:loseinventory
