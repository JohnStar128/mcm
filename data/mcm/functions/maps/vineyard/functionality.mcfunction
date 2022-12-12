#> Chimney levitation
execute as @a[predicate=mcm:bounding_boxes/vineyardchimney] at @s run effect give @s minecraft:levitation 1 26 true

#> Teleport players out of bounds back inbounds (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/vineyard] at @s run tp @s @e[tag=PlayerSpawn,limit=1,sort=random]

#> Secret stuff
execute as @a[tag=queued,tag=!spectating,nbt={SelectedItem:{id:"minecraft:bone_meal"}}] run item modify entity @s weapon.mainhand mcm:vineyard_secret
execute as @a[tag=queued,scores={vineyard_secret=1}] at @s run loot spawn ~ ~ ~ loot mcm:grapes
execute as @a[tag=queued,scores={vineyard_secret=1}] run scoreboard players add @s vineyard_secret 1
execute if entity @a[scores={vineyard_secret=2}] if block 1953 60 1978 comparator[powered=true] run place template mcm:vineyard_secret_open 1935 54 1980
execute if block 1953 60 1978 comparator[powered=true] as @a[scores={vineyard_secret=2}] run scoreboard players add @s vineyard_secret 1
execute if block 1958 55 2012 polished_blackstone_button[powered=true] as @a[predicate=mcm:bounding_boxes/vineyard_secret] run advancement grant @s only mcm:vineyard

#> Make sure Lance stays a baby turtle
execute positioned 2000 100 2000 as @e[type=turtle,limit=1,sort=nearest] run data merge entity @s {Age:-2147483648}

#> Keep spectators inbounds
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 3 unless predicate mcm:bounding_boxes/vineyard run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 3 unless predicate mcm:bounding_boxes/vineyard run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0