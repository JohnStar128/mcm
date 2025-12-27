# Reload sound
execute if predicate mcm:5050chance run tag @s add sound_type
execute if entity @s[tag=sound_type] at @s run playsound gun_load master @a ~ ~ ~ 0.8 1
execute unless entity @s[tag=sound_type] at @s run playsound gun_load2 master @a ~ ~ ~ 0.8 1

tag @s remove sound_type
$tag @s remove $(id)
$function mcm:util/timer/delete {name:"$reload_$(id)"}
