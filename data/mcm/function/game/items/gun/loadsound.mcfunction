execute if predicate mcm:5050chance run tag @s add SoundType
execute if entity @s[tag=SoundType] run playsound gun_load master @a ~ ~ ~ 0.8 1
execute unless entity @s[tag=SoundType] run playsound gun_load2 master @a ~ ~ ~ 0.8 1

tag @a[tag=SoundType] remove SoundType