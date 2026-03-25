execute as @a at @s run function main:pressure_plate/set_score
execute as @a[tag=start] at @s run function main:time/timing

execute as @a[scores={player_rc=1..}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data={back:1}] run function main:use_item/back
execute as @a[scores={player_rc=1..}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data={reset:1}] run function main:use_item/reset
