#> "Fake Kills" the player with some fancy effects instead of actual /kill commands.

scoreboard players set @s dead 1
gamemode spectator @s
tag @s add spectator

# Drop player head
execute at @s run playsound entity.player.hurt master @a ~ ~ ~ 1 0.8
execute at @s run particle block{'block_state': {'Name': 'redstone_block'}} ~ ~1 ~ 0.2 0.1 0.1 0.1 50 force
execute at @s run loot spawn ~ ~1.4 ~ loot mcm:playerhead
execute as @e[type=item,tag=!NBTSet,nbt={Item:{id:"minecraft:player_head"}}] run data merge entity @s {PickupDelay:2000000000,Tags:["key_item"]}
execute as @e[type=item,tag=!NBTSet,nbt={Item:{id:"minecraft:player_head"}}] run data modify entity @s Owner set from entity @e[type=marker,tag=gameID,limit=1] UUID

# Bone animation
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","1","key_item"],PickupDelay:2000000000,Age:5950,Item:{id:"minecraft:bone",Count:1b},Motion:[0.15d,0.2d,0.0d]}
execute as @e[type=item,tag=BoneDeco,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","2","key_item"],PickupDelay:2000000000,Age:5950,Item:{id:"minecraft:bone",Count:1b},Motion:[0.15d,0.2d,0.15d]}
execute as @e[type=item,tag=BoneDeco,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","3","key_item"],PickupDelay:2000000000,Age:5950,Item:{id:"minecraft:bone",Count:1b},Motion:[0.1d,0.1d,0.2d]}
execute as @e[type=item,tag=BoneDeco,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","4","key_item"],PickupDelay:2000000000,Age:5950,Item:{id:"minecraft:bone",Count:1b},Motion:[-0.15d,0.4d,0.0d]}
execute as @e[type=item,tag=BoneDeco,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","5","key_item"],PickupDelay:2000000000,Age:5950,Item:{id:"minecraft:bone",Count:1b},Motion:[-0.05d,0.2d,0.0d]}
execute as @e[type=item,tag=BoneDeco,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","6","key_item"],PickupDelay:2000000000,Age:5950,Item:{id:"minecraft:bone",Count:1b},Motion:[0.15d,0.3d,-0.15d]}
execute as @e[type=item,tag=BoneDeco,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
execute as @e[type=item,tag=BoneDeco,tag=!UUIDConfirmed] run tag @s add UUIDConfirmed

execute as @e[type=item,tag=BoneDeco] run data modify entity @s Owner set from entity @e[type=marker,tag=gameID,limit=1] UUID

# Drop items that aren't blacklisted
scoreboard players set $player_drop_inv_idx vars 0
data merge storage mcm:player_inv_drop {idx:0}
execute at @s run function mcm:player_state/drop_items_on_death with storage mcm:player_inv_drop
scoreboard players reset $player_drop_inv_idx vars

#> Spectate
execute at @s[tag=!murderer] run spectate @a[tag=murderer,limit=1,sort=nearest]

#> Death message
$tellraw @s { \
    translate:"$(msg)", \
    color:"$(color)", \
    bold:$(bold), \
    italic:$(italic), \
    with:["$(arg1)"] \
}


# Event log
data merge storage mcm:args {death_event:{translate:"",color:"green",type:1}}
# TODO: Set up environmental death event log
# data modify storage mcm:args death_event.translate set from storage 
execute if entity @s[tag=queued] on attacker if entity @s[tag=gunner] run data merge storage mcm:args {death_event:{translate:"mcm.game.events.killed_by_gunner",type:2}}
execute if entity @s[tag=queued] on attacker if entity @s[tag=murderer] run data merge storage mcm:args {death_event:{translate:"mcm.game.events.killed_by_murderer",type:2}}

function mcm:summary/add_event with storage mcm:args death_event
data remove storage mcm:args death_event
