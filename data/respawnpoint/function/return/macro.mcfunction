$tp @s $(x) $(y) $(z) $(rot_y) $(rot_x)
execute unless entity @s[tag=converting] if score @s Deaths matches 1 if entity @s[tag=diedToPlayer] run function respawnpoint:convertmole
$execute positioned $(x) $(y) $(z) if score @s Deaths matches 2 run function respawnpoint:loseinventory
$execute positioned $(x) $(y) $(z) if entity @s[tag=!diedToPlayer] if score @s Deaths matches 1 run function respawnpoint:loseinventory
