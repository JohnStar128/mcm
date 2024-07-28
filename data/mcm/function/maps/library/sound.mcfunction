execute as @e[type=marker,tag=sound_marker,limit=1,sort=random] at @s run playsound minecraft:item.book.page_turn block @a ~ ~ ~ 1 1
execute if score $library_flip CmdData matches 1 as @e[type=marker,tag=sound_marker,limit=1,sort=random] at @s run playsound minecraft:entity.allay.hurt block @a ~ ~ ~ 1 0.1
execute if score $library_flip CmdData matches 1 if predicate mcm:5050chance as @e[type=marker,tag=sound_marker,limit=1,sort=random] at @s run playsound minecraft:ambient.underwater.loop.rare block @a ~ ~ ~ 10 0 1
execute if score $library_flip CmdData matches 1 if predicate mcm:5050chance as @e[type=marker,tag=sound_marker,limit=1,sort=random] at @s run playsound minecraft:ambient.underwater.loop.ultra_rare block @a ~ ~ ~ 10 0 1
