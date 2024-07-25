
#> Finds a specified item in a players inventory then stores a specific tag to nbt storage
#> Args 
#>      `path` path of the nbt tag to copy, use `tag.your_tag_here` to get a regular nbt on an item
#>      `storage` the target nbt storage
#>      `storage_path` the target nbt path
#>      Call on the player of the inventory to be checked

scoreboard players set count temp 0
execute store result storage mcm:args count int 1 run scoreboard players get count temp

$data merge storage mcm:args {path:"$(path)", storage:"$(storage)",storage_path:"$(storage_path)"}
function mcm:items/find_item_and_copy_data_inner with storage mcm:args

data remove storage mcm:args path
data remove storage mcm:args storage
data remove storage mcm:args storage_path
data remove storage mcm:args count