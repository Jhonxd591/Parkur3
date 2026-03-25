execute rotated as @s run spawnpoint @s ~ ~ ~ ~ 0
title @s actionbar {"text":"Time started!","color":"gold"}
playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.3 2
tag @s remove init_plate

scoreboard players set @s timer_tick 0
scoreboard players set @s timer 0
team leave @s
playsound minecraft:entity.lightning_bolt.thunder ambient @a 63 45 21
function main:use_item/give

tag @s add start
#function main:time