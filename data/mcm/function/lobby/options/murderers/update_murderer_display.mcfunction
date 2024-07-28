
execute store result score temp temp run data get storage mcm:options options.murderers.smart

execute if score temp temp matches 0 run \
    data merge entity @s {text:'{"nbt":"options.murderers.value","storage":"mcm:options"}'}
execute if score temp temp matches 1 run \
    data merge entity @s {text:'{"nbt":"options.murderers.value","storage":"mcm:options","color":"dark_gray"}'}