execute rotated as @s run spawnpoint @s ~ ~ ~ ~ 0
title @s actionbar {"text":"Checkpoint Set!","color":"gold"}
playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.5 2
tag @s remove init_plate
function main:use_item/give
