#> Returns the items nbt in `mcm:args.nbt`
#> This overwrites any value there
#> Args: `item` the item to query

$data modify storage mcm:args nbt set from storage mcm:items $(item).nbt