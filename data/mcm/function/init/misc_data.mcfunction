#> Miscellaneous small bits of data that need to be initialized

# Create a cache for player head lookup
data remove storage mcm:player_name_cache list
data merge storage mcm:player_name_cache {list:[]}

# Create the function queue
data remove storage mcm:queue list
data merge storage mcm:queue {list:[]}

# Create a Psuedo-RNG storage
data remove storage mcm:prng next
data merge storage mcm:prng {next:1}
