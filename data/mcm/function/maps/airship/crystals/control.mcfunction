#> Tag players when they hold a crystal
execute as @a[tag=!hold_crystal] if items entity @s weapon.* *[custom_data~{crystal:1b}] run function mcm:maps/airship/crystals/summon_displays
execute as @a[tag=hold_crystal] at @s run function mcm:maps/airship/crystals/player_hold
execute as @a[tag=hold_crystal] unless items entity @s weapon.* *[custom_data~{crystal:1b}] at @s run function mcm:maps/airship/crystals/kill_displays

execute as @e[type=item_display,tag=tp_beacon_display] run function mcm:maps/airship/crystals/update_display

#> Grow crystals
execute if score $crystal_growth timers matches 0 as @e[type=interaction,tag=airship_crystal_spawn,sort=random,limit=1] at @s on passengers run function mcm:maps/airship/crystals/grow with entity @s data
execute as @e[type=interaction,tag=airship_crystal_spawn] at @s on passengers if data entity @s data.grown run particle dust{'color': [0.8, 0.5, 0.9], 'scale': 1.5} ~ ~0.5 ~ 0.05 0.1 0.1 0.5 1 force
