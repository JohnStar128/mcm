#> Fail if not grown
execute unless data entity @s data.grown run return fail
#> Fail if the player already has one
execute on vehicle on target if items entity @s container.* *[custom_data~{crystal:1b}] run return run tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.airship.crystal.heavy","underlined":false,"color":"red"}]

#> Give crystal and reset properties
execute on vehicle on target run function mcm:items/give {item:"crystal"}
execute on vehicle at @s run setblock ~ ~ ~ air destroy
data modify entity @s data.stage set value 0
data remove entity @s data.grown
