#> Tp player back to their previous position
execute store result score @s playerUUID run data get entity @s Owner[0]
scoreboard players operation $tempuuid playerUUID = @s playerUUID
tp @a[predicate=mcm:matches_uuid,limit=1] ~ ~ ~ ~ ~

#> Set player's items from llama
item replace entity @a[predicate=mcm:matches_uuid,limit=1] hotbar.0 from entity @s horse.0 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] hotbar.1 from entity @s horse.1 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] hotbar.2 from entity @s horse.2 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] hotbar.3 from entity @s horse.3 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] hotbar.4 from entity @s horse.4 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] hotbar.5 from entity @s horse.5 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] hotbar.6 from entity @s horse.6 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] hotbar.7 from entity @s horse.7 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] hotbar.8 from entity @s horse.8 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] armor.chest from entity @s horse.9 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] armor.feet from entity @s horse.10 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] armor.head from entity @s horse.11 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] armor.legs from entity @s horse.12 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] weapon.offhand from entity @s horse.13 

#> Set player's items from chest
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.0 from block ~ ~ ~ container.0 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.1 from block ~ ~ ~ container.1
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.2 from block ~ ~ ~ container.2 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.3 from block ~ ~ ~ container.3
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.4 from block ~ ~ ~ container.4 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.5 from block ~ ~ ~ container.5 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.6 from block ~ ~ ~ container.6
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.7 from block ~ ~ ~ container.7 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.8 from block ~ ~ ~ container.8
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.9 from block ~ ~ ~ container.9 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.10 from block ~ ~ ~ container.10
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.11 from block ~ ~ ~ container.11 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.12 from block ~ ~ ~ container.12 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.13 from block ~ ~ ~ container.13 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.14 from block ~ ~ ~ container.14
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.15 from block ~ ~ ~ container.15
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.16 from block ~ ~ ~ container.16 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.17 from block ~ ~ ~ container.17 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.18 from block ~ ~ ~ container.18 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.19 from block ~ ~ ~ container.19 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.20 from block ~ ~ ~ container.20 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.21 from block ~ ~ ~ container.21 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.22 from block ~ ~ ~ container.22 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.23 from block ~ ~ ~ container.23 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.24 from block ~ ~ ~ container.24
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.25 from block ~ ~ ~ container.25 
item replace entity @a[predicate=mcm:matches_uuid,limit=1] inventory.26 from block ~ ~ ~ container.26 

execute if block ~ ~ ~ chest run setblock ~ ~ ~ air
data merge entity @s {Items:[],ChestedHorse:0b}
kill @s
