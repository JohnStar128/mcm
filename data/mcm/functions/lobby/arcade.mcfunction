# testing range
execute as @a[advancements={mcm:lobby/arcade_tutorial=true}] run tp @s 36 1 -11 180 0
execute as @a[advancements={mcm:lobby/arcade_tutorial=true}] run advancement revoke @s only mcm:lobby/arcade_tutorial

# credits
execute as @a[advancements={mcm:lobby/arcade_credits=true}] run tp @s 15 1 136
execute as @a[advancements={mcm:lobby/arcade_credits=true}] run advancement revoke @s only mcm:lobby/arcade_credits

# "coming soon" - tp to parkour in the future
execute as @a[advancements={mcm:lobby/arcade_parkour=true}] run tellraw @s ["Coming soon!"]
execute as @a[advancements={mcm:lobby/arcade_parkour=true}] run advancement revoke @s only mcm:lobby/arcade_parkour

# out of order
execute as @a[advancements={mcm:lobby/arcade_out_of_order=true}] run tellraw @s ["Out of order"]
execute as @a[advancements={mcm:lobby/arcade_out_of_order=true}] run advancement revoke @s only mcm:lobby/arcade_out_of_order
