effect give @a[tag=converting] minecraft:slowness 30 255
effect give @a[tag=converting] minecraft:mining_fatigue 30 255
effect give @a[tag=converting] minecraft:weakness 30 4
effect give @a[tag=converting] minecraft:resistance 30 4
effect give @a[tag=converting] minecraft:luck 30
tag @a[tag=converting] remove converting
schedule function molehunt:convert_mole_loop 1t
