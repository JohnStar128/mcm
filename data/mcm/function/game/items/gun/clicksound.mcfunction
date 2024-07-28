execute if predicate mcm:5050chance run tag @s add SoundType
execute if entity @s[tag=SoundType] run playsound gun_click master @a ~ ~ ~ 0.4 1
execute unless entity @s[tag=SoundType] run playsound gun_click2 master @a ~ ~ ~ 0.4 1

tag @a[tag=SoundType] remove SoundType