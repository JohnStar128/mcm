#> Needs interaction entity as sender
scoreboard players operation $temp hatchange = @s cosmetic_ids
execute on target run scoreboard players operation @s hatchange = $temp hatchange
execute on target run function mcm:cosmetics/change_cosmetics

#> Reset interaction status
data merge entity @s {interaction:{player:[I;0,0,0,0],timestamp:0}}
