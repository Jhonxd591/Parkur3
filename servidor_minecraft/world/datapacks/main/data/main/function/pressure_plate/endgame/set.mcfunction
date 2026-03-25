execute rotated as @s run spawnpoint @s ~ ~ ~ ~ 0
title @s actionbar {"text":"Time Paused!","color":"gold"}
playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.3 2
tag @s remove init_plate
team join finished @s
playsound minecraft:entity.lightning_bolt.thunder ambient @a 63 45 21

scoreboard players operation @s timer_min = @s timer
scoreboard players operation @s timer_sec = @s timer
scoreboard players operation @s timer_min /= map.generic count.60
scoreboard players operation @s timer_sec %= map.generic count.60

tellraw @s [{"text":"You had finished Parkour in ","bold":false,"color":"green"},{"score":{"name":"@s","objective":"timer_min"},"color":"gold","bold":true},{"text":" min and ","bold":false,"color":"green"},{"score":{"name":"@s","objective":"timer_sec"},"color":"gold","bold":true},{"text":" seconds!","color":"green","bold":false}]

tag @s remove start
#function main:time