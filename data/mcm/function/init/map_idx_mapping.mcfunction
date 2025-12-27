# Set up a mapping of map names to their ID and vice-versa
#   Ex: Will add {library:1,1:"library"} to mcm:maps name_idx_map by default

$data merge storage mcm:maps {name_idx_map:{$(name):$(count),$(count):"$(name)"}}
data remove storage mcm:maps temp.list[0]
execute store result storage mcm:maps temp.list[0].count int 1 run scoreboard players add $count vars 1
