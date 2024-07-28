# summon_diner_apartments.mcfunction
# Resummon display props in the apartments above the diner

kill @e[tag=diner_apartments]

# Paper and pillows suite 101
execute positioned 25 10 47 run summon item_display ~-0.1 ~0.2 ~0.5 {item:{id:paper,Count:1b},item_display:fixed,transformation:[0.707f,-0.707f,0f,0f, 0.707f,0.707f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],brightness:{block:15,sky:15},Tags:["diner_apartments"]}
execute positioned 18 9 37 run summon block_display ~-0.25 ~ ~-0.25 {block_state:{Name:white_wool},transformation:[1.5f,0f,0f,0f, 0f,0.3f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],Tags:["diner_apartments"]}
execute positioned 20 9 37 run summon block_display ~-0.25 ~ ~-0.25 {block_state:{Name:white_wool},transformation:[1.5f,0f,0f,0f, 0f,0.3f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],Tags:["diner_apartments"]}

# Flat screen TV Suite 201
execute positioned 34 16 32 run summon block_display ~ ~0.5 ~ {block_state:{Name:white_stained_glass},transformation:[0.1f,0f,0f,0f, 0f,2.25f,0f,0f, 0f,0f,4f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 16 32 run summon block_display ~ ~0.6 ~ {block_state:{Name:fire},transformation:[0.1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 16 33 run summon block_display ~ ~0.6 ~ {block_state:{Name:fire},transformation:[0.1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 16 34 run summon block_display ~ ~0.6 ~ {block_state:{Name:fire},transformation:[0.1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 16 35 run summon block_display ~ ~0.6 ~ {block_state:{Name:fire},transformation:[0.1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 16 32 run summon block_display ~0.1 ~0.6 ~ {block_state:{Name:prismarine_bricks},transformation:[0.1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 16 33 run summon block_display ~0.1 ~0.6 ~ {block_state:{Name:prismarine_bricks},transformation:[0.1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 16 34 run summon block_display ~0.1 ~0.6 ~ {block_state:{Name:prismarine_bricks},transformation:[0.1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 16 35 run summon block_display ~0.1 ~0.6 ~ {block_state:{Name:prismarine_bricks},transformation:[0.1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 17 32 run summon block_display ~0.1 ~0.6 ~ {block_state:{Name:prismarine_bricks},transformation:[0.1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 17 33 run summon block_display ~0.1 ~0.6 ~ {block_state:{Name:prismarine_bricks},transformation:[0.1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 17 34 run summon block_display ~0.1 ~0.6 ~ {block_state:{Name:prismarine_bricks},transformation:[0.1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 17 35 run summon block_display ~0.1 ~0.6 ~ {block_state:{Name:prismarine_bricks},transformation:[0.1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}

# Bezels
execute positioned 34 16 32 run summon block_display ~-0.1 ~0.4 ~-0.1 {block_state:{Name:black_concrete},transformation:[0.3f,0f,0f,0f, 0f,2.45f,0f,0f, 0f,0f,0.3f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 16 32 run summon block_display ~-0.1 ~0.4 ~-0.1 {block_state:{Name:black_concrete},transformation:[0.3f,0f,0f,0f, 0f,0.3f,0f,0f, 0f,0f,4.2f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 16 32 run summon block_display ~-0.1 ~2.55 ~-0.1 {block_state:{Name:black_concrete},transformation:[0.3f,0f,0f,0f, 0f,0.3f,0f,0f, 0f,0f,4.2f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 16 32 run summon block_display ~-0.1 ~0.4 ~3.8 {block_state:{Name:black_concrete},transformation:[0.3f,0f,0f,0f, 0f,2.45f,0f,0f, 0f,0f,0.3f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 16 32 run summon block_display ~0.2 ~0.5 ~ {block_state:{Name:black_concrete},transformation:[0.1f,0f,0f,0f, 0f,2.25f,0f,0f, 0f,0f,4f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 16 32 run summon block_display ~0.3 ~0.6 ~0.1 {block_state:{Name:black_concrete},transformation:[0.2f,0f,0f,0f, 0f,2.05f,0f,0f, 0f,0f,3.8f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 34 16 32 run summon block_display ~-0.11 ~0.48 ~3.6 {block_state:{Name:red_concrete},transformation:[0.05f,0f,0f,0f, 0f,0.05f,0f,0f, 0f,0f,0.05f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"]}

# TV remote
execute positioned 31 16 35 run summon block_display ~-0.35 ~ ~0.1 {block_state:{Name:gray_concrete},transformation:[0.6f,0f,0f,0f, 0f,0.1f,0f,0f, 0f,0f,0.2f,0f, 0f,0f,0f,1f],Tags:["diner_apartments"],Rotation:[-15f,0f]}
# power
execute positioned 31 16 35 run summon block_display ~-0.35 ~0.07 ~0.1 {block_state:{Name:light_gray_concrete},transformation:[0.04f,0f,0f,0.54f, 0f,0.04f,0f,0f, 0f,0f,0.04f,0.02f, 0f,0f,0f,1f],Tags:["diner_apartments"],Rotation:[-15f,0f]}
execute positioned 31 16 35 run summon block_display ~-0.35 ~0.07 ~0.1 {block_state:{Name:red_stained_glass},transformation:[0.04f,0f,0f,0.54f, 0f,0.04f,0f,0f, 0f,0f,0.04f,0.14f, 0f,0f,0f,1f],Tags:["diner_apartments"],Rotation:[-15f,0f]}
# select/up/down/left/right
execute positioned 31 16 35 run summon block_display ~-0.35 ~0.07 ~0.1 {block_state:{Name:light_gray_concrete},transformation:[0.04f,0f,0f,0.36f, 0f,0.04f,0f,0f, 0f,0f,0.04f,0.08f, 0f,0f,0f,1f],Tags:["diner_apartments"],Rotation:[-15f,0f]}
execute positioned 31 16 35 run summon block_display ~-0.35 ~0.07 ~0.1 {block_state:{Name:light_gray_concrete},transformation:[0.04f,0f,0f,0.42f, 0f,0.04f,0f,0f, 0f,0f,0.04f,0.08f, 0f,0f,0f,1f],Tags:["diner_apartments"],Rotation:[-15f,0f]}
execute positioned 31 16 35 run summon block_display ~-0.35 ~0.07 ~0.1 {block_state:{Name:light_gray_concrete},transformation:[0.04f,0f,0f,0.30f, 0f,0.04f,0f,0f, 0f,0f,0.04f,0.08f, 0f,0f,0f,1f],Tags:["diner_apartments"],Rotation:[-15f,0f]}
execute positioned 31 16 35 run summon block_display ~-0.35 ~0.07 ~0.1 {block_state:{Name:light_gray_concrete},transformation:[0.04f,0f,0f,0.36f, 0f,0.04f,0f,0f, 0f,0f,0.04f,0.02f, 0f,0f,0f,1f],Tags:["diner_apartments"],Rotation:[-15f,0f]}
execute positioned 31 16 35 run summon block_display ~-0.35 ~0.07 ~0.1 {block_state:{Name:light_gray_concrete},transformation:[0.04f,0f,0f,0.36f, 0f,0.04f,0f,0f, 0f,0f,0.04f,0.14f, 0f,0f,0f,1f],Tags:["diner_apartments"],Rotation:[-15f,0f]}

# channel up/down, volume up/down
execute positioned 31 16 35 run summon block_display ~-0.35 ~0.07 ~0.1 {block_state:{Name:light_gray_concrete},transformation:[0.04f,0f,0f,0.16f, 0f,0.04f,0f,0f, 0f,0f,0.04f,0.04f, 0f,0f,0f,1f],Tags:["diner_apartments"],Rotation:[-15f,0f]}
execute positioned 31 16 35 run summon block_display ~-0.35 ~0.07 ~0.1 {block_state:{Name:light_gray_concrete},transformation:[0.04f,0f,0f,0.1f, 0f,0.04f,0f,0f, 0f,0f,0.04f,0.04f, 0f,0f,0f,1f],Tags:["diner_apartments"],Rotation:[-15f,0f]}
execute positioned 31 16 35 run summon block_display ~-0.35 ~0.07 ~0.1 {block_state:{Name:light_gray_concrete},transformation:[0.04f,0f,0f,0.16f, 0f,0.04f,0f,0f, 0f,0f,0.04f,0.12f, 0f,0f,0f,1f],Tags:["diner_apartments"],Rotation:[-15f,0f]}
execute positioned 31 16 35 run summon block_display ~-0.35 ~0.07 ~0.1 {block_state:{Name:light_gray_concrete},transformation:[0.04f,0f,0f,0.1f, 0f,0.04f,0f,0f, 0f,0f,0.04f,0.12f, 0f,0f,0f,1f],Tags:["diner_apartments"],Rotation:[-15f,0f]}

# Lamps
execute positioned 22 17 47 run summon block_display ~ ~ ~ {block_state:{Name:ochre_froglight},transformation:[0.8f,0f,0f,-0.4f, 0f,0.8f,0f,0.1f, 0f,0f,0.8f,-0.4f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 24 17 34 run summon block_display ~ ~ ~ {block_state:{Name:ochre_froglight},transformation:[0.8f,0f,0f,-0.4f, 0f,0.8f,0f,0.1f, 0f,0f,0.8f,-0.4f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 18 17 34 run summon block_display ~ ~ ~ {block_state:{Name:pearlescent_froglight},transformation:[0.4f,0f,0f,-0.2f, 0f,0.8f,0f,0.1f, 0f,0f,0.4f,-0.2f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 18 17 34 run summon block_display ~ ~ ~ {block_state:{Name:white_stained_glass},transformation:[0.5f,0f,0f,-0.25f, 0f,1f,0f,0f, 0f,0f,0.5f,-0.25f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 20 17 37 run summon block_display ~ ~ ~ {block_state:{Name:ochre_froglight},transformation:[0.8f,0f,0f,-0.4f, 0f,0.8f,0f,0.1f, 0f,0f,0.8f,-0.4f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 20 15 37 run summon block_display ~ ~ ~ {block_state:{Name:end_rod},transformation:[1f,0f,0f,-0.5f, 0f,1f,0f,0f, 0f,0f,1f,-0.5f, 0f,0f,0f,1f],Tags:["diner_apartments"]}
execute positioned 19 16 47 run summon block_display ~-0.25 ~ ~-0.75 {block_state:{Name:white_wool},transformation:[1.5f,0f,0f,0f, 0f,0.3f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],Tags:["diner_apartments"]}

# Popcorn
execute positioned 31 16 34 run summon item_display ~ ~0.5 ~-0.13 {item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1114}},item_display:fixed,Rotation:[0f,0f],brightness:{block:15,sky:15},Tags:["diner_apartments"]}
