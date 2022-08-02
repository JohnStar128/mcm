#> kills only the knife cosmetic owned by the murderer retrieving their knife
execute store result score @s playerUUID run data get entity @s Owner[0]
scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @a[predicate=mcm:matches_uuid,scores={knifeRetrieval=1..}] run kill @s