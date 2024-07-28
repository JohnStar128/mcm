#> Call this with `item` as the id to be queried for the retrieval
#> `item` in `mcm:args.item` will be set to the retrieval id if it exists
#> otherwise `mcm:args.item` will be cleared

data remove storage mcm:args item
$execute if data storage mcm:items $(item)_retrieve run data merge storage mcm:args {item:$(item)_retrieve}