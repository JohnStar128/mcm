#> Mount a player on this prop (i.e. chair) and give them a tag
execute on vehicle store result score $temp vars if data entity @s Passengers[]
execute on vehicle on target if score $temp vars matches 2.. run return run function mcm:props/failed_mount
scoreboard players reset $temp vars

execute on vehicle run ride @a[advancements={mcm:util/interact=true},limit=1] mount @s
$execute on vehicle on target run tag @s add $(tag)
