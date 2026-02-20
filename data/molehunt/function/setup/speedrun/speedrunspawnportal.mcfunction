kill @e[type=marker,tag=Portal]
summon marker ~ ~ ~2 {Tags:["Portal"]}

fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:bedrock
fill ~1 ~ ~1 ~-1 ~1 ~-1 minecraft:air

fill ~2 ~ ~1 ~2 ~ ~-1 minecraft:end_portal_frame[eye=false,facing=west]
fill ~-2 ~ ~1 ~-2 ~ ~-1 minecraft:end_portal_frame[eye=false,facing=east]
fill ~1 ~ ~2 ~-1 ~ ~2 minecraft:end_portal_frame[eye=false,facing=north]
fill ~1 ~ ~-2 ~-1 ~ ~-2 minecraft:end_portal_frame[eye=false,facing=south]

execute at @e[type=marker,tag=Portal,limit=1] run setblock ~ ~ ~ bedrock

tellraw @a [{"text":"\n"},{"hover_event":{"action":"show_text","contents":"/scoreboard players set moles Molehunt #","value":[{"text":""}]},"text":"How many Moles?"},{"text":"\n\n"},{"click_event":{"action":"run_command","command":"/function molehunt:setup/molecount/1mole"},"color":"red","text":"[1]"},{"color":"red","text":"   "},{"click_event":{"action":"run_command","command":"/function molehunt:setup/molecount/2mole"},"color":"red","text":"[2]"},{"color":"red","text":"   "},{"click_event":{"action":"run_command","command":"/function molehunt:setup/molecount/3mole"},"color":"red","text":"[3]"},{"color":"red","text":"   "},{"click_event":{"action":"run_command","command":"/function molehunt:setup/molecount/4mole"},"color":"red","text":"[4]"},{"color":"red","text":"   "},{"click_event":{"action":"run_command","command":"/function molehunt:setup/molecount/5mole"},"color":"red","text":"[5]"},{"color":"red","text":"   "},{"click_event":{"action":"run_command","command":"/function molehunt:setup/molecount/vmole"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"Set your own amount of Moles"}]},"text":"[#]"}]
