#> Remove test range items and give back lobby items
clear @s warped_fungus_on_a_stick[custom_data={gun:1b,item:"gun",NoDrop:1b,Autoqueue:0b}]
clear @s #mcm:test_range_items
#> Kill extra owned items
execute as @e[type=item] run function mcm:lobby/test_range/kill_items 
#> Remove tag
tag @s remove test_range
