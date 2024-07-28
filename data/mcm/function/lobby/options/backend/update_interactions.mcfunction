
$execute store success score temp temp run function $(enable_callback) with entity @s Passengers[0].data

execute if entity @s[tag=!unlockable] if data storage mcm:options options.locked run scoreboard players set temp temp 0

execute if score temp temp matches 0 run data modify entity @s width set value 0f
execute if score temp temp matches 1 run data modify entity @s width set from entity @s Passengers[0].data.width