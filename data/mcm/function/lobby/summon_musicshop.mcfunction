# summon_musicshop.mcfunction
# Resummon item display props in the record store

kill @e[tag=musicshop]

# Cork board behind the counter
execute positioned 31 12 61 run summon item_display ~0.5 ~0.2 ~0.3 {item:{id:music_disc_far,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[90f,0f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 31 12 61 run summon item_display ~0.5 ~1.1 ~-0.1 {item:{id:music_disc_strad,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[90f,0f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 31 12 61 run summon item_display ~0.5 ~1.7 ~0.7 {item:{id:music_disc_mall,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[90f,0f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 31 12 61 run summon item_display ~0.5 ~0.7 ~1.25 {item:{id:music_disc_mellohi,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[90f,0f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 31 12 61 run summon item_display ~0.5 ~1.5 ~-1.0 {item:{id:music_disc_13,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[90f,0f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 31 12 61 run summon item_display ~0.5 ~-0.1 ~-1.0 {item:{id:paper,Count:1b},item_display:fixed,transformation:[0.707f,-0.707f,0f,0f, 0.707f,0.707f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[90f,0f],brightness:{block:15,sky:15},Tags:["musicshop"]}

# Record player
execute positioned 31 11 54 run summon block_display ~-0.45 ~0.05 ~-0.3 {block_state:{"Name":"dark_oak_slab"},transformation:[0.9f,0f,0f,0f, 0f,0.4f,0f,0f, 0f,0f,1.3f,0f, 0f,0f,0f,1f],Tags:["musicshop"]}
execute positioned 31 11 54 run summon item_display ~ ~0.3 ~0.1 {item:{id:music_disc_13,Count:1b},transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[90f,90f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 31 11 54 run summon item_display ~ ~0.4 ~0.45 {item:{id:stick,Count:1b},transformation:[1f,0f,0f,0f, 0f,0f,0.9f,0f, 0f,-0.9f,0f,0f, 0f,0f,0f,1f],Rotation:[10f,0f],Tags:["musicshop"]}
execute positioned 31 11 54 run summon block_display ~-0.3 ~-0.63 ~1.3 {block_state:{"Name":"dark_oak_button"},transformation:[1f,0f,0f,0f, 0f,0f,1f,0f, 0f,-1f,0f,0f, 0f,0f,0f,1f],Tags:["musicshop"]}
execute positioned 30 11 54 run summon block_display ~0.63 ~0.22 ~0.22 {block_state:{"Name":"tripwire_hook"},transformation:[0.2f,0f,0f,0f, 0f,0.2f,0f,0f, 0f,0f,0.2f,0f, 0f,0f,0f,1f],Rotation:[-35f,270f],Tags:["musicshop"]}
execute positioned 31 11 54 run summon block_display ~-0.4 ~ ~-0.25 {block_state:{"Name":"black_wool"},transformation:[0.1f,0f,0f,0f, 0f,0.1f,0f,0f, 0f,0f,0.1f,0f, 0f,0f,0f,1f],Tags:["musicshop"]}
execute positioned 31 11 54 run summon block_display ~-0.4 ~ ~0.85 {block_state:{"Name":"black_wool"},transformation:[0.1f,0f,0f,0f, 0f,0.1f,0f,0f, 0f,0f,0.1f,0f, 0f,0f,0f,1f],Tags:["musicshop"]}
execute positioned 31 11 54 run summon block_display ~0.3 ~ ~-0.25 {block_state:{"Name":"black_wool"},transformation:[0.1f,0f,0f,0f, 0f,0.1f,0f,0f, 0f,0f,0.1f,0f, 0f,0f,0f,1f],Tags:["musicshop"]}
execute positioned 31 11 54 run summon block_display ~0.3 ~ ~0.85 {block_state:{"Name":"black_wool"},transformation:[0.1f,0f,0f,0f, 0f,0.1f,0f,0f, 0f,0f,0.1f,0f, 0f,0f,0f,1f],Tags:["musicshop"]}

# Rack of records
execute positioned 27 12 53 run summon block_display ~ ~0.4 ~-0.5 {block_state:{"Name":"dark_oak_fence"},transformation:[0.6f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,0.6f,0f, 0f,0f,0f,1f],Rotation:[0f,90f],Tags:["musicshop"]}
execute positioned 27 12 53 run summon block_display ~-0.6 ~0.4 ~-0.5 {block_state:{"Name":"dark_oak_fence"},transformation:[0.6f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,0.6f,0f, 0f,0f,0f,1f],Rotation:[0f,90f],Tags:["musicshop"]}
execute positioned 27 12 52 run summon block_display ~ ~0.4 ~-0.5 {block_state:{"Name":"dark_oak_fence"},transformation:[0.6f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,0.6f,0f, 0f,0f,0f,1f],Rotation:[0f,90f],Tags:["musicshop"]}
execute positioned 27 12 52 run summon block_display ~-0.6 ~0.4 ~-0.5 {block_state:{"Name":"dark_oak_fence"},transformation:[0.6f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,0.6f,0f, 0f,0f,0f,1f],Rotation:[0f,90f],Tags:["musicshop"]}
execute positioned 27 12 51 run summon block_display ~-0.5 ~ ~0.45 {block_state:{"Name":"dragon_egg"},transformation:[1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,0.1f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],Tags:["musicshop"]}
execute positioned 27 12 53 run summon block_display ~-0.5 ~ ~0.45 {block_state:{"Name":"dragon_egg"},transformation:[1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,0.1f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],Tags:["musicshop"]}
execute positioned 27 12 53 run summon block_display ~-0.35 ~-0.1 ~-0.75 {block_state:{"Name":"dark_oak_fence_gate"},transformation:[0.7f,0f,0f,0f, 0f,0.8f,0f,0f, 0f,0f,0.5f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],Tags:["musicshop"]}
execute positioned 27 12 53 run summon block_display ~-0.35 ~-0.1 ~-0.25 {block_state:{"Name":"dark_oak_fence_gate"},transformation:[0.7f,0f,0f,0f, 0f,0.8f,0f,0f, 0f,0f,0.5f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],Tags:["musicshop"]}
execute positioned 27 12 53 run summon block_display ~-0.35 ~-0.1 ~-1.25 {block_state:{"Name":"dark_oak_fence_gate"},transformation:[0.7f,0f,0f,0f, 0f,0.8f,0f,0f, 0f,0f,0.5f,0f, 0f,0f,0f,1f],Rotation:[0f,0f],Tags:["musicshop"]}

# Records in rack
execute positioned 27 12 52 run summon item_display ~ ~0.5 ~-0.26 {item:{id:music_disc_pigstep,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[0f,-25f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 27 12 52 run summon item_display ~ ~0.5 ~0.08 {item:{id:music_disc_cat,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[0f,-5f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 27 12 52 run summon item_display ~ ~0.5 ~0.24 {item:{id:music_disc_relic,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[0f,13f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 27 12 52 run summon item_display ~ ~0.5 ~0.32 {item:{id:music_disc_ward,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[0f,11f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 27 12 52 run summon item_display ~ ~0.5 ~0.43 {item:{id:music_disc_strad,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[0f,3f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 27 12 52 run summon item_display ~ ~0.5 ~0.72 {item:{id:music_disc_chirp,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[0f,27f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 27 12 52 run summon item_display ~ ~0.5 ~0.89 {item:{id:music_disc_blocks,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[0f,15f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 27 12 52 run summon item_display ~ ~0.5 ~1.17 {item:{id:music_disc_otherside,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[0f,20f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 27 12 52 run summon item_display ~ ~0.5 ~1.26 {item:{id:music_disc_mellohi,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[0f,16f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 27 12 52 run summon item_display ~ ~0.5 ~1.37 {item:{id:music_disc_wait,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[0f,10f],brightness:{block:15,sky:15},Tags:["musicshop"]}

# Broken shellac record
execute positioned 29 10 50 run summon item_display ~-0.7 ~ ~0.3 {item:{id:music_disc_11,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1.5f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[36f,90f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 29 10 50 run summon item_display ~0.1 ~ ~0.1 {item:{id:disc_fragment_5,Count:1b},item_display:fixed,transformation:[0.5f,0f,0f,0f, 0f,0.75f,0f,0f, 0f,0f,0.5f,0f, 0f,0f,0f,1f],Rotation:[36f,90f],brightness:{block:15,sky:15},Tags:["musicshop"]}

# Bargain Buy
execute positioned 21 10 58 run summon item_display ~ ~0.1 ~0.3 {item:{id:paper,Count:1b},item_display:fixed,transformation:[1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[0f,90f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 21 10 57 run summon item_display ~0.33 ~0.35 ~0.4 {item:{id:music_disc_5,Count:1b},item_display:fixed,transformation:[0.8f,0f,0f,0f, 0f,1.2f,0f,0f, 0f,0f,0.8f,0f, 0f,0f,0f,1f],Rotation:[-54f,30f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 22 10 57 run summon item_display ~0.33 ~0.1 ~0.0 {item:{id:music_disc_5,Count:1b},item_display:fixed,transformation:[0.8f,0f,0f,0f, 0f,1.2f,0f,0f, 0f,0f,0.8f,0f, 0f,0f,0f,1f],Rotation:[22f,90f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 22 10 57 run summon item_display ~0.9 ~0.14 ~0.1 {item:{id:music_disc_5,Count:1b},item_display:fixed,transformation:[0.8f,0f,0f,0f, 0f,1.2f,0f,0f, 0f,0f,0.8f,0f, 0f,0f,0f,1f],Rotation:[120f,85f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 22 10 57 run summon item_display ~1.1 ~0.1 ~1.2 {item:{id:music_disc_5,Count:1b},item_display:fixed,transformation:[0.8f,0f,0f,0f, 0f,1.2f,0f,0f, 0f,0f,0.8f,0f, 0f,0f,0f,1f],Rotation:[-44f,90f],brightness:{block:15,sky:15},Tags:["musicshop"]}
execute positioned 22 10 57 run summon item_display ~-0.4 ~0.1 ~2.0 {item:{id:music_disc_5,Count:1b},item_display:fixed,transformation:[0.8f,0f,0f,0f, 0f,1.2f,0f,0f, 0f,0f,0.8f,0f, 0f,0f,0f,1f],Rotation:[140f,90f],brightness:{block:15,sky:15},Tags:["musicshop"]}
