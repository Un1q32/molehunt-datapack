kill @e[type=marker,tag=Portal]
summon marker ~ ~ ~2 {Tags:["Portal"]}

fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:bedrock
fill ~1 ~ ~1 ~-1 ~1 ~-1 minecraft:air

fill ~2 ~ ~1 ~2 ~ ~-1 minecraft:end_portal_frame[eye=false,facing=west]
fill ~-2 ~ ~1 ~-2 ~ ~-1 minecraft:end_portal_frame[eye=false,facing=east]
fill ~1 ~ ~2 ~-1 ~ ~2 minecraft:end_portal_frame[eye=false,facing=north]
fill ~1 ~ ~-2 ~-1 ~ ~-2 minecraft:end_portal_frame[eye=false,facing=south]

execute at @e[type=marker,tag=Portal,limit=1] run setblock ~ ~ ~ bedrock

tellraw @a ["\n",{"text":"How many Moles?","hoverEvent":{"action":"show_text","contents":"/scoreboard players set moles Molehunt #"}},{"text":"\n\n"},{"text":"[1]","color":"red","click_event":{"action":"run_command","command":"/function molehunt:setup/molecount/1mole"}},{"text":"   ","color":"red"},{"text":"[2]","color":"red","click_event":{"action":"run_command","command":"/function molehunt:setup/molecount/2mole"}},{"text":"   ","color":"red"},{"text":"[3]","color":"red","click_event":{"action":"run_command","command":"/function molehunt:setup/molecount/3mole"}},{"text":"   ","color":"red"},{"text":"[4]","color":"red","click_event":{"action":"run_command","command":"/function molehunt:setup/molecount/4mole"}},{"text":"   ","color":"red"},{"text":"[5]","color":"red","click_event":{"action":"run_command","command":"/function molehunt:setup/molecount/5mole"}},{"text":"   ","color":"red"},{"text":"[#]","color":"red","click_event":{"action":"run_command","command":"/function molehunt:setup/molecount/vmole"}}]
