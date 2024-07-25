#> Decides whether the map slot interaction is enabled

# Get the map index used
execute store result score index temp run data get storage mcm:options options.map_toggle.page
execute store result score size temp run data get storage mcm:options options.map_toggle.page_size
scoreboard players operation index temp *= size temp
$scoreboard players add index temp $(index)

execute store result score count temp run data get storage mcm:options options.map_toggle.map_count

scoreboard players operation count temp -= index temp

execute if score count temp matches 1.. run return 1
return fail