#> "Fake Kills" the player with some fancy effects instead of actual /kill commands.

execute at @s run scoreboard players set @s dead 1
tag @s add TempDead
execute at @s run gamemode spectator @s
execute at @s run playsound minecraft:entity.player.hurt master @a ~ ~ ~ 1 0.8
execute at @s run particle block redstone_block ~ ~1 ~ 0.2 0.1 0.1 0.1 50 force
execute at @s run loot spawn ~ ~1.4 ~ loot mcm:playerhead
execute as @e[type=item,tag=!NBTSet,nbt={Item:{id:"minecraft:player_head"}}] run data merge entity @s {PickupDelay:2000000000,Tags:["KeyItem"]}
execute as @e[type=item,tag=!NBTSet,nbt={Item:{id:"minecraft:player_head"}}] run data modify entity @s Owner set from entity @e[type=marker,tag=gameID,limit=1] UUID

#oof ouch my bones
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","1","KeyItem"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[0.15d,0.2d,0.0d]}
execute as @e[type=item,tag=BoneDeco,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","2","KeyItem"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[0.15d,0.2d,0.15d]}
execute as @e[type=item,tag=BoneDeco,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","3","KeyItem"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[0.1d,0.1d,0.2d]}
execute as @e[type=item,tag=BoneDeco,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","4","KeyItem"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[-0.15d,0.4d,0.0d]}
execute as @e[type=item,tag=BoneDeco,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","5","KeyItem"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[-0.05d,0.2d,0.0d]}
execute as @e[type=item,tag=BoneDeco,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","6","KeyItem"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[0.15d,0.3d,-0.15d]}
execute as @e[type=item,tag=BoneDeco,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
execute as @e[type=item,tag=BoneDeco,tag=!UUIDConfirmed] run tag @s add UUIDConfirmed

execute as @e[type=item,tag=BoneDeco] run data modify entity @s Owner set from entity @e[type=marker,tag=gameID,limit=1] UUID

#> Drop gun if gunner is killed
execute at @s[tag=gunner] run loot spawn ~ ~ ~ loot mcm:gun_normal 
execute at @s run clear @s warped_fungus_on_a_stick 

#> LIBRARY: Drop books if they have any
execute if score $selectedMap CmdData matches 1 at @s run loot spawn ~ ~ ~ loot mcm:books
execute if score $selectedMap CmdData matches 1 at @s run clear @s book

#> RIVERBOAT: Drop cards if they have any
execute if score $selectedMap CmdData matches 6 at @s run loot spawn ~ ~ ~ loot mcm:card1
execute if score $selectedMap CmdData matches 6 at @s run loot spawn ~ ~ ~ loot mcm:card8
execute if score $selectedMap CmdData matches 6 at @s run clear @s stick{CustomModelData:1116}
execute if score $selectedMap CmdData matches 6 at @s run clear @s stick{CustomModelData:1117}

#> Spectate (temporary)
execute at @s run gamemode spectator @s
execute at @s run spectate @a[tag=murderer,limit=1,sort=nearest]
#execute at @s run tag @s remove innocent
execute at @s run tag @s remove gunner
execute at @s run tag @s add spectating

# Clear any remaining items
clear

tag @s remove TempDead

scoreboard players set @s dead 1