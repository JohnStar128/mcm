##Utility function for handling item dropping
execute as @e[type=item,tag=!knifeCosmetic] if items entity @s contents *[custom_data~{NoDrop:1b}] run function mcm:util/nodropprocess