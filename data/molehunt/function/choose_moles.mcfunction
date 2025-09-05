execute if score Moles MoleCount matches 1.. run tag @r[tag=!mole,tag=!inno] add mole
scoreboard players remove Moles MoleCount 1
execute if score Moles MoleCount matches 1.. run schedule function molehunt:choose_moles 1t
