# summon_telegraph_key.mcfunction
# Resummon telegraph key props in the canyon train station

kill @e[tag=telegraph_key]

# Wooden base
execute positioned 2902 3 2947 run summon block_display ~-0.45 ~0.025 ~-0.3 {block_state:{"Name":"spruce_pressure_plate"},transformation:[0.9f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,0.6f,0f, 0f,0f,0f,1f],Tags:["telegraph_key"]}
execute positioned 2902 3 2947 run summon block_display ~-0.35 ~ ~-0.225 {block_state:{"Name":"black_wool"},transformation:[0.1f,0f,0f,0f, 0f,0.05f,0f,0f, 0f,0f,0.1f,0f, 0f,0f,0f,1f],Tags:["telegraph_key"]}
execute positioned 2902 3 2947 run summon block_display ~-0.35 ~ ~0.125 {block_state:{"Name":"black_wool"},transformation:[0.1f,0f,0f,0f, 0f,0.05f,0f,0f, 0f,0f,0.1f,0f, 0f,0f,0f,1f],Tags:["telegraph_key"]}
execute positioned 2902 3 2947 run summon block_display ~0.25 ~ ~-0.225 {block_state:{"Name":"black_wool"},transformation:[0.1f,0f,0f,0f, 0f,0.05f,0f,0f, 0f,0f,0.1f,0f, 0f,0f,0f,1f],Tags:["telegraph_key"]}
execute positioned 2902 3 2947 run summon block_display ~0.25 ~ ~0.125 {block_state:{"Name":"black_wool"},transformation:[0.1f,0f,0f,0f, 0f,0.05f,0f,0f, 0f,0f,0.1f,0f, 0f,0f,0f,1f],Tags:["telegraph_key"]}

# Telegraph key itself
execute positioned 2902 3 2947 run summon item_display ~0.2 ~0.1 ~ {item:{id:music_disc_stal,Count:1b},transformation:[0.4f,0f,0f,0f, 0f,0.4f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[90f,90f],Tags:["telegraph_key"]}
execute positioned 2902 3 2947 run summon block_display ~0.25 ~0.12 ~-0.01 {block_state:{Name:netherite_block},transformation:[0.05f,0f,0f,0f, 0f,0.05f,0f,0f, 0f,0f,0.05f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],Tags:["telegraph_key"]}
execute positioned 2902 3 2947 run summon block_display ~0.1 ~0.12 ~-0.01 {block_state:{Name:netherite_block},transformation:[0.05f,0f,0f,0f, 0f,0.05f,0f,0f, 0f,0f,0.05f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],Tags:["telegraph_key"]}
execute positioned 2902 3 2947 run summon block_display ~0.1 ~0.15 ~0.01 {block_state:{Name:netherite_block},transformation:[0.19f,0f,0f,0f, 0f,0.01f,0f,0f, 0f,0f,0.01f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],Tags:["telegraph_key"]}
execute positioned 2902 3 2947 run summon block_display ~0.19 ~0.16 ~-0.1 {block_state:{Name:netherite_block},transformation:[0.02f,0f,0f,0f, 0f,0.02f,0f,0f, 0f,0f,0.3f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],Tags:["telegraph_key"]}
execute positioned 2902 3 2947 run summon block_display ~0.175 ~0.18 ~0.165 {block_state:{Name:dragon_egg},transformation:[0.05f,0f,0f,0f, 0f,0.05f,0f,0f, 0f,0f,0.05f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],Tags:["telegraph_key"]}
execute positioned 2902 3 2947 run summon block_display ~0.19 ~0.12 ~0.1 {block_state:{Name:copper_block},transformation:[0.02f,0f,0f,0f, 0f,0.03f,0f,0f, 0f,0f,0.02f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],Tags:["telegraph_key"]}

# Batteries
execute positioned 2902 3 2947 run summon item_display ~-0.2 ~0.2 ~-0.09 {item:{id:fire_charge,Count:1b},transformation:[0.2f,0f,0f,0f, 0f,0.2f,0f,0f, 0f,0f,3f,0f, 0f,0f,0f,1f],Rotation:[90f,0f],Tags:["telegraph_key"]}
execute positioned 2902 3 2947 run summon item_display ~-0.2 ~0.2 ~0.09 {item:{id:fire_charge,Count:1b},transformation:[0.2f,0f,0f,0f, 0f,0.2f,0f,0f, 0f,0f,3f,0f, 0f,0f,0f,1f],Rotation:[90f,0f],Tags:["telegraph_key"]}
execute positioned 2902 3 2947 run summon block_display ~-0.1 ~0.1 ~-0.2 {block_state:{Name:netherite_block},transformation:[0.03f,0f,0f,0f, 0f,0.2f,0f,0f, 0f,0f,0.4f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],Tags:["telegraph_key"]}
execute positioned 2902 3 2947 run summon block_display ~-0.3 ~0.1 ~-0.2 {block_state:{Name:netherite_block},transformation:[0.03f,0f,0f,0f, 0f,0.2f,0f,0f, 0f,0f,0.4f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],Tags:["telegraph_key"]}

# Connectors
execute positioned 2902 3 2947 run summon block_display ~0.08 ~0.3 ~-0.12 {block_state:{Name:tripwire_hook},transformation:[0.2f,0f,0f,0f, 0f,0.2f,0f,0f, 0f,0f,0.2f,0f, 0f,0f,0f,1f],Rotation:[180f,90f],Tags:["telegraph_key"]}
execute positioned 2902 3 2947 run summon block_display ~0.16 ~0.3 ~-0.12 {block_state:{Name:tripwire_hook},transformation:[0.2f,0f,0f,0f, 0f,0.2f,0f,0f, 0f,0f,0.2f,0f, 0f,0f,0f,1f],Rotation:[180f,90f],Tags:["telegraph_key"]}
execute positioned 2902 3 2947 run summon block_display ~0.45 ~0.3 ~-0.12 {block_state:{Name:tripwire_hook},transformation:[0.2f,0f,0f,0f, 0f,0.2f,0f,0f, 0f,0f,0.2f,0f, 0f,0f,0f,1f],Rotation:[180f,90f],Tags:["telegraph_key"]}
execute positioned 2902 3 2947 run summon block_display ~-0.25 ~0.3 ~-0.12 {block_state:{Name:tripwire_hook},transformation:[0.2f,0f,0f,0f, 0f,0.2f,0f,0f, 0f,0f,0.2f,0f, 0f,0f,0f,1f],Rotation:[180f,90f],Tags:["telegraph_key"]}
