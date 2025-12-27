#> Args :`item` as the item to be given
#>      :`mcm:args.nbt` extra nbt to set if needed
#>      :`mcm:args.replace` to override the item
#>      "`mcm:args.slot` to override slot

$execute if entity @s[type=marker] on vehicle on target run return run function mcm:items/give {item:"$(item)"}

$data merge storage mcm:args {item:"$(item)"}

function mcm:items/give_item with storage mcm:args