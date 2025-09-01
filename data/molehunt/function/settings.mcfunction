
scoreboard players enable @a MainSettingsDisplay
scoreboard players enable @a TimeSettingsDisplay
scoreboard players enable @a MoleSettingsDisplay
scoreboard players enable @a BorderSettingsDisplay
scoreboard players enable @a MoleFrequency
scoreboard players enable @a Border

execute as @a[team=alive] if score @s MainSettingsDisplay matches 1 run function molehunt:setting_options
execute as @a[team=alive] if score @s TimeSettingsDisplay matches 1 run function molehunt:time_options
execute as @a[team=alive] if score @s MoleSettingsDisplay matches 1 run function molehunt:mole_options
execute as @a[team=alive] if score @s BorderSettingsDisplay matches 1 run function molehunt:border_options

execute as @a[team=alive] if score @s HourSettings matches 1 run function molehunt:change_time
execute as @a[team=alive] if score @s HourSettings matches -1 run function molehunt:change_time
execute as @a[team=alive] if score @s MinuteSettings matches 1.. run function molehunt:change_time
execute as @a[team=alive] if score @s MinuteSettings matches ..-1 run function molehunt:change_time

execute as @a[team=alive] unless score @s MoleFrequency matches 0 run function molehunt:change_frequency

execute as @a[team=alive] unless score @s Border matches 0 run function molehunt:change_border

title @a actionbar ""

scoreboard players enable @a Molehunt