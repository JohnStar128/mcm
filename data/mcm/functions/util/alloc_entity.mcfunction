#> Avoid garbage collection by keeping our own list of entities to use for each game
#> This function serves as a replacement for summoning entities
#> The entity in question needs to actually exist and be loaded for the function to work!
#> This also means that it would NOT be a good idea to store particularly laggy entities with this method

#> Usage: /execute as @e[type=blah,tag=available,etc.] positioned x y z run function mcm:util/alloc_entity
#> Should work the same as /summon blah x y z {nbt} (assuming the entity is available)

tag @s remove available
tp @s ~ ~ ~

#> Debug, delete later
scoreboard players add $used available_entities 1