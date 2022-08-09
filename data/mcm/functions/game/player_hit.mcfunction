#> Triggers when a player is hit. Controls whether to kill them or not.

execute as @s[advancements={mcm:hit_detection/gun_hit=true}] run function mcm:game/playerdeath

execute if score $murderer_ff GameRules matches 0 as @s[advancements={mcm:hit_detection/knife_hit=true},tag=!murderer] run function mcm:game/playerdeath
execute if score $murderer_ff GameRules matches 0 as @s[advancements={mcm:hit_detection/knife_melee_hit=true},tag=!murderer] run function mcm:game/playerdeath

execute if score $murderer_ff GameRules matches 1 as @s[advancements={mcm:hit_detection/knife_hit=true}] run function mcm:game/playerdeath
execute if score $murderer_ff GameRules matches 1 as @s[advancements={mcm:hit_detection/knife_melee_hit=true}] run function mcm:game/playerdeath

advancement revoke @s only mcm:hit_detection/gun_hit
advancement revoke @s only mcm:hit_detection/knife_hit
advancement revoke @s only mcm:hit_detection/knife_melee_hit
