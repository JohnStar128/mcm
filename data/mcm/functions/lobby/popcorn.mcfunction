tag @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1114}}}] add HoldPopcorn

execute as @a[tag=!PopcornDelay,tag=HoldPopcorn,scores={popcornClick=1..}] at @s run playsound minecraft:entity.generic.eat master @a ~ ~ ~ 0.4 1.1
execute as @a[tag=!PopcornDelay,tag=HoldPopcorn,scores={popcornClick=1..}] at @s anchored eyes run particle item warped_fungus_on_a_stick{CustomModelData:1114} ^ ^-0.1 ^0.3 0.1 0.1 0.1 0.1 2 force @a
execute as @a[tag=!PopcornDelay,tag=HoldPopcorn,scores={popcornClick=1..}] at @s anchored eyes run tag @s add PopcornDelay

scoreboard players reset @a[scores={popcornClick=1..}] popcornClick

tag @a[tag=HoldPopcorn] remove HoldPopcorn

#> Delay between eating popcorn, so you can't just autoclick for a 20cps sound spam
scoreboard players add @a[tag=PopcornDelay] popcorndelay 1
tag @a[scores={popcorndelay=3..}] remove PopcornDelay
scoreboard players reset @a[tag=!PopcornDelay,scores={popcorndelay=1..}] popcorndelay