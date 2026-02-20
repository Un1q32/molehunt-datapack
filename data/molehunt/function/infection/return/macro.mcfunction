$tp @s $(x) $(y) $(z) $(rot_y) $(rot_x)
execute unless entity @s[tag=Converting] if score @s Deaths matches 1 run function molehunt:infection/convertmole
$execute positioned $(x) $(y) $(z) if score @s Deaths matches 2.. run function molehunt:infection/loseinventory

# Respawnpoint datapack made by GalSergey. Modified a bit for a server fix.
