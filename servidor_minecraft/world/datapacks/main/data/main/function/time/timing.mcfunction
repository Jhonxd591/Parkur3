scoreboard players add @s timer_tick 1
execute if score @s timer_tick matches 20.. run scoreboard players add @s timer 1
scoreboard players set @s[scores={timer_tick=20..}] timer_tick 0