execute as @a[scores={Deaths=1},tag=!mole] run tag @s add converting
execute as @a[tag=converting] run tag @s add mole
execute as @a[tag=converting] run tag @s remove inno
execute at @a[tag=converting] run execute as @e[type=item,distance=..2] run data modify entity @s PickupDelay set value 0
schedule function molehunt:convert_mole_loop_2 1t
