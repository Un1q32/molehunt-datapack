advancement revoke @s only respawnpoint:death
data modify storage respawnpoint:data Pos set from entity @s Pos
data modify storage respawnpoint:data Rotation set from entity @s Rotation
execute store result score @s respawn.x run data get storage respawnpoint:data Pos[0] 100
execute store result score @s respawn.y run data get storage respawnpoint:data Pos[1] 100
execute store result score @s respawn.z run data get storage respawnpoint:data Pos[2] 100
execute store result score @s respawn.rot_y run data get storage respawnpoint:data Rotation[0] 100
execute store result score @s respawn.rot_x run data get storage respawnpoint:data Rotation[1] 100
execute store result score @s respawn.timestamp run time query gametime
scoreboard players add @s respawn.timestamp 6
schedule function respawnpoint:respawn 1t append
# Failsafe in case server ticks while player dies
schedule function respawnpoint:respawn 5t append
