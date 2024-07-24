#> Give a player the item in the display
$execute unless items entity @s container.* *[custom_data~{item:"$(item)"}] unless items entity @s weapon.offhand *[custom_data~{item:"$(item)"}] run function mcm:items/give {item:$(item)}
execute as @e[type=item] run function mcm:lobby/test_range/kill_items
