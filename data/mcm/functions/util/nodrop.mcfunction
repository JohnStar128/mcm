##Utility function for handling item dropping
execute as @e[type=item,tag=!knifeCosmetic] if entity @s[type=item,nbt={Item:{tag:{NoDrop:1b}}}] run function mcm:util/nodropprocess