#> Summon chest and entities stand for storing items
execute if block ~ ~ ~ air run setblock ~ ~ ~ chest
summon llama ~ ~ ~ {NoAI:1b,NoGravity:1b,Tags:["inventory_helper"],Strength:5,ChestedHorse:1b}
data modify entity @e[type=llama,limit=1,sort=nearest] Owner set from entity @s UUID
data modify entity @e[type=llama,limit=1,sort=nearest] Rotation set from entity @s Rotation

#> Set llama's items
item replace entity @e[type=llama,limit=1,sort=nearest] horse.0 from entity @s hotbar.0
item replace entity @e[type=llama,limit=1,sort=nearest] horse.1 from entity @s hotbar.1
item replace entity @e[type=llama,limit=1,sort=nearest] horse.2 from entity @s hotbar.2
item replace entity @e[type=llama,limit=1,sort=nearest] horse.3 from entity @s hotbar.3
item replace entity @e[type=llama,limit=1,sort=nearest] horse.4 from entity @s hotbar.4
item replace entity @e[type=llama,limit=1,sort=nearest] horse.5 from entity @s hotbar.5
item replace entity @e[type=llama,limit=1,sort=nearest] horse.6 from entity @s hotbar.6
item replace entity @e[type=llama,limit=1,sort=nearest] horse.7 from entity @s hotbar.7
item replace entity @e[type=llama,limit=1,sort=nearest] horse.8 from entity @s hotbar.8
item replace entity @e[type=llama,limit=1,sort=nearest] horse.9 from entity @s armor.chest
item replace entity @e[type=llama,limit=1,sort=nearest] horse.10 from entity @s armor.feet
item replace entity @e[type=llama,limit=1,sort=nearest] horse.11 from entity @s armor.head
item replace entity @e[type=llama,limit=1,sort=nearest] horse.12 from entity @s armor.legs
item replace entity @e[type=llama,limit=1,sort=nearest] horse.13 from entity @s weapon.offhand

#> Set chest's items
item replace block ~ ~ ~ container.0 from entity @s inventory.0 
item replace block ~ ~ ~ container.1 from entity @s inventory.1
item replace block ~ ~ ~ container.2 from entity @s inventory.2 
item replace block ~ ~ ~ container.3 from entity @s inventory.3 
item replace block ~ ~ ~ container.4 from entity @s inventory.4 
item replace block ~ ~ ~ container.5 from entity @s inventory.5 
item replace block ~ ~ ~ container.6 from entity @s inventory.6 
item replace block ~ ~ ~ container.7 from entity @s inventory.7 
item replace block ~ ~ ~ container.8 from entity @s inventory.8 
item replace block ~ ~ ~ container.9 from entity @s inventory.9 
item replace block ~ ~ ~ container.10 from entity @s inventory.10 
item replace block ~ ~ ~ container.11 from entity @s inventory.11 
item replace block ~ ~ ~ container.12 from entity @s inventory.12 
item replace block ~ ~ ~ container.13 from entity @s inventory.13 
item replace block ~ ~ ~ container.14 from entity @s inventory.14 
item replace block ~ ~ ~ container.15 from entity @s inventory.15 
item replace block ~ ~ ~ container.16 from entity @s inventory.16 
item replace block ~ ~ ~ container.17 from entity @s inventory.17 
item replace block ~ ~ ~ container.18 from entity @s inventory.18 
item replace block ~ ~ ~ container.19 from entity @s inventory.19 
item replace block ~ ~ ~ container.20 from entity @s inventory.20 
item replace block ~ ~ ~ container.21 from entity @s inventory.21 
item replace block ~ ~ ~ container.22 from entity @s inventory.22 
item replace block ~ ~ ~ container.23 from entity @s inventory.23 
item replace block ~ ~ ~ container.24 from entity @s inventory.24 
item replace block ~ ~ ~ container.25 from entity @s inventory.25 
item replace block ~ ~ ~ container.26 from entity @s inventory.26 

#> Set dev score to 1
scoreboard players set @s dev 1