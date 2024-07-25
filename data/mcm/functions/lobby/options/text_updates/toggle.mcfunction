

$execute store result score temp temp run data get storage mcm:options options.$(option)


execute unless data storage mcm:options options.locked if score temp temp matches 0 run \
    data modify entity @s text set from entity @s Passengers[0].data.disabled
execute unless data storage mcm:options options.locked if score temp temp matches 1 run \
    data modify entity @s text set from entity @s Passengers[0].data.enabled

execute if data storage mcm:options options.locked if score temp temp matches 0 run \
    data modify entity @s text set from entity @s Passengers[0].data.locked_disabled
execute if data storage mcm:options options.locked if score temp temp matches 1 run \
    data modify entity @s text set from entity @s Passengers[0].data.locked_enabled