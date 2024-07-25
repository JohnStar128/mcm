# testing range
execute as @a[advancements={mcm:lobby/arcade_tutorial=true}] run tp @s 36 1 -11 180 0
execute as @a[advancements={mcm:lobby/arcade_tutorial=true}] run advancement revoke @s only mcm:lobby/arcade_tutorial

# credits
execute as @a[advancements={mcm:lobby/arcade_credits=true}] run tp @s 15 1 136
execute as @a[advancements={mcm:lobby/arcade_credits=true}] run advancement revoke @s only mcm:lobby/arcade_credits

# "coming soon" - tp to parkour in the future
execute as @a[advancements={mcm:lobby/arcade_parkour=true}] run tellraw @s {"translate":"mcm.instruction.parkour","bold":false,"italic":false,"color":"white"}
execute as @a[advancements={mcm:lobby/arcade_parkour=true}] run advancement revoke @s only mcm:lobby/arcade_parkour

# options/spectate balcony
execute as @a[advancements={mcm:lobby/arcade_options=true}] run tp @s 22 8 98.0 -90 0
execute as @a[advancements={mcm:lobby/arcade_options=true}] run advancement revoke @s only mcm:lobby/arcade_options
