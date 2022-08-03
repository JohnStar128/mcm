#> Avoid garbage collection by keeping our own list of entities to use for each game
#> This function serves as a replacement for killing entities

#> Usage: /execute as @e[type=blah,etc.] run function mcm:util/dealloc_entity
#> Should work the same as /kill blah[etc.] (assuming the entity is available)

tag @s add available
tp @s 1 -49 70

#> Debug, delete later
scoreboard players remove $used available_entities 1