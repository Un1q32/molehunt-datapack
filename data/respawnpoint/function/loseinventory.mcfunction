execute unless entity @e[type=minecraft:chest_minecart,tag=deathInv1,distance=...5] run summon chest_minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["deathInv1"]}
execute unless entity @e[type=minecraft:chest_minecart,tag=deathInv2,distance=...5] run summon chest_minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["deathInv2"]}

data modify entity @e[type=minecraft:chest_minecart,tag=deathInv1,limit=1,sort=nearest] Items set from entity @s Inventory

item replace entity @e[type=minecraft:chest_minecart,tag=deathInv2,limit=1,sort=nearest] container.0 from entity @s container.27
item replace entity @e[type=minecraft:chest_minecart,tag=deathInv2,limit=1,sort=nearest] container.1 from entity @s container.28
item replace entity @e[type=minecraft:chest_minecart,tag=deathInv2,limit=1,sort=nearest] container.2 from entity @s container.29
item replace entity @e[type=minecraft:chest_minecart,tag=deathInv2,limit=1,sort=nearest] container.3 from entity @s container.30
item replace entity @e[type=minecraft:chest_minecart,tag=deathInv2,limit=1,sort=nearest] container.4 from entity @s container.31
item replace entity @e[type=minecraft:chest_minecart,tag=deathInv2,limit=1,sort=nearest] container.5 from entity @s container.32
item replace entity @e[type=minecraft:chest_minecart,tag=deathInv2,limit=1,sort=nearest] container.6 from entity @s container.33
item replace entity @e[type=minecraft:chest_minecart,tag=deathInv2,limit=1,sort=nearest] container.7 from entity @s container.34
item replace entity @e[type=minecraft:chest_minecart,tag=deathInv2,limit=1,sort=nearest] container.8 from entity @s container.35
item replace entity @e[type=minecraft:chest_minecart,tag=deathInv2,limit=1,sort=nearest] container.9 from entity @s armor.head
item replace entity @e[type=minecraft:chest_minecart,tag=deathInv2,limit=1,sort=nearest] container.10 from entity @s armor.chest
item replace entity @e[type=minecraft:chest_minecart,tag=deathInv2,limit=1,sort=nearest] container.11 from entity @s armor.legs
item replace entity @e[type=minecraft:chest_minecart,tag=deathInv2,limit=1,sort=nearest] container.12 from entity @s armor.feet
item replace entity @e[type=minecraft:chest_minecart,tag=deathInv2,limit=1,sort=nearest] container.13 from entity @s weapon.offhand


gamemode spectator @s
clear @s
kill @e[type=minecraft:chest_minecart,tag=deathInv1,limit=1,sort=nearest]
kill @e[type=minecraft:chest_minecart,tag=deathInv2,limit=1,sort=nearest]
execute as @e[type=item,distance=..2] run data modify entity @s PickupDelay set value 20
