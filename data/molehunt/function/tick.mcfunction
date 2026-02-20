# Store player and team counts
execute store result score players Molehunt if entity @a
execute store result score molesLeft Molehunt if entity @a[team=Mole,tag=!Dead]
execute store result score survivorsLeft Molehunt if entity @a[team=Survivor,tag=!Dead]

# Timer
execute if score playing Molehunt matches 1 run function molehunt:timer/timer

# Other gameplay features (triggerlist, effect clears, etc.)
execute if score playing Molehunt matches 1 run function molehunt:gameplay
