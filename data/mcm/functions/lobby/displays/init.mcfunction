#> Initialize the scrolling hat display
# Too add a new hat:
# Copy one of the other hats
# update tags to correctly on entities to correct hat value
# Update cosmetic_ids scoreboard to the one for the new hat
# Update the item display to dislay the correct item
# Change the x coord of the display by +1.5 in x direction
# Adjust display height as needed 


#> Initialize scoreboard constants
scoreboard players set $low display_scrolling -500
scoreboard players set $vis_low display_scrolling -350
scoreboard players set $vis_high display_scrolling 250

#> Scaling constants
#> min/max values to scale the displays to when they are visible
scoreboard players set $scale_max display_scaling 100
scoreboard players set $scale_min display_scaling 70

#> Calculate other constants from the above constants
scoreboard players operation $vis_range display_scrolling = $vis_high display_scaling
scoreboard players operation $vis_range display_scrolling -= $vis_low display_scaling

scoreboard players operation $vis_center display_scrolling = $vis_high display_scrolling
scoreboard players operation $vis_center display_scrolling += $vis_low display_scrolling
scoreboard players operation $vis_center display_scrolling /= $2 math

scoreboard players operation $vis_range display_scrolling = $vis_high display_scrolling
scoreboard players operation $vis_range display_scrolling -= $vis_low display_scrolling

scoreboard players operation $scale_diff display_scaling = $scale_max display_scaling
scoreboard players operation $scale_diff display_scaling -= $scale_min display_scaling

#> Remove old cosmetics
kill @e[tag=lobby_cosmetic_displays]

#> Remove hat
summon item_display 0.0 2.375 81 {Tags:["cosmetic", "lobby_cosmetic_displays", "empty"]}
summon interaction 0 0 0 {Tags:["lobby_cosmetic_displays","empty"],response:true,width:1,height:1}
scoreboard players set @e[type=interaction,tag=empty,tag=lobby_cosmetic_displays] cosmetic_ids -1
execute as @e[type=interaction,tag=empty,tag=lobby_cosmetic_displays] run ride @s mount @e[type=item_display,tag=lobby_cosmetic_displays,tag=empty,limit=1]

#> Rainbow Hat
summon item_display 1.5 2.375 81 {Tags:["cosmetic", "lobby_cosmetic_displays", "rainbow_hat"],item:{id:"diamond_hoe",Count:1b,tag:{CustomModelData:1114}},item_display:"head",transformation:[1f,0f,0f,0f, 0f,1f,0f,0.5f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[45f, 0f]}
summon interaction 0 0 0 {Tags:["lobby_cosmetic_displays","rainbow_hat"],response:true,width:1,height:1}
summon interaction 0 0 0 {Tags:["lobby_cosmetic_displays","rainbow_hat"],response:true,width:1,height:-1}
scoreboard players set @e[type=interaction,tag=rainbow_hat,tag=lobby_cosmetic_displays] cosmetic_ids 1
execute as @e[type=interaction,tag=rainbow_hat,tag=lobby_cosmetic_displays] run ride @s mount @e[type=item_display,tag=lobby_cosmetic_displays,tag=rainbow_hat,limit=1]

#> Turtle Hat
summon item_display 3.0 1.375 81 {Tags:["cosmetic", "lobby_cosmetic_displays", "turtle_hat"],item_display:"head"}
summon interaction 0 0 0 {Tags:["lobby_cosmetic_displays","turtle_hat"],response:true,width:1,height:2}
summon armor_stand 0 0 0 {Tags:["lobby_cosmetic_displays", "turtle_hat"],ArmorItems:[{},{},{},{id:"turtle_helmet",Count:1b}],Invisible:1,Marker:1,Rotation:[-135f, 0f]}
scoreboard players set @e[type=interaction,tag=turtle_hat,tag=lobby_cosmetic_displays] cosmetic_ids 2
execute as @e[type=interaction,tag=turtle_hat,tag=lobby_cosmetic_displays] run ride @s mount @e[type=item_display,tag=lobby_cosmetic_displays,tag=turtle_hat,limit=1]
execute as @e[type=armor_stand,tag=turtle_hat,tag=lobby_cosmetic_displays] run ride @s mount @e[type=item_display,tag=lobby_cosmetic_displays,tag=turtle_hat,limit=1]

#> Space Helmet
summon item_display 4.5 2.375 81 {Tags:["cosmetic", "lobby_cosmetic_displays", "space_helmet"],item:{id:"diamond_hoe",Count:1b,tag:{CustomModelData:1111}},item_display:"head",transformation:[1f,0f,0f,0f, 0f,1f,0f,0.5f, 0f,0f,1f,0f, 0f,0f,0f,1f]}
summon interaction 0 0 0 {Tags:["lobby_cosmetic_displays","space_helmet"],response:true,width:1,height:1}
summon interaction 0 0 0 {Tags:["lobby_cosmetic_displays","space_helmet"],response:true,width:1,height:-1}
scoreboard players set @e[type=interaction,tag=space_helmet,tag=lobby_cosmetic_displays] cosmetic_ids 3
execute as @e[type=interaction,tag=space_helmet,tag=lobby_cosmetic_displays] run ride @s mount @e[type=item_display,tag=lobby_cosmetic_displays,tag=space_helmet,limit=1]

#> 3D glasses
summon item_display 6.0 2.375 81 {Tags:["cosmetic", "lobby_cosmetic_displays", "3d_glasses"],item:{id:"diamond_hoe",Count:1b,tag:{CustomModelData:1112}},item_display:"head",transformation:[1f,0f,0f,0f, 0f,1f,0f,0.5f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[45f, 0f]}
summon interaction 0 0 0 {Tags:["lobby_cosmetic_displays","3d_glasses"],response:true,width:1,height:1}
summon interaction 0 0 0 {Tags:["lobby_cosmetic_displays","3d_glasses"],response:true,width:1,height:-1}
scoreboard players set @e[type=interaction,tag=3d_glasses,tag=lobby_cosmetic_displays] cosmetic_ids 4
execute as @e[type=interaction,tag=3d_glasses,tag=lobby_cosmetic_displays] run ride @s mount @e[type=item_display,tag=lobby_cosmetic_displays,tag=3d_glasses,limit=1]

#> Bell
summon item_display 7.5 2.375 81 {Tags:["cosmetic", "lobby_cosmetic_displays", "bell"],item:{id:"diamond_hoe",Count:1b,tag:{CustomModelData:1117}},item_display:"head",transformation:[1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[45f, 0f]}
summon interaction 0 0 0 {Tags:["lobby_cosmetic_displays","bell"],response:true,width:1,height:1}
summon interaction 0 0 0 {Tags:["lobby_cosmetic_displays","bell"],response:true,width:1,height:-1}
scoreboard players set @e[type=interaction,tag=bell,tag=lobby_cosmetic_displays] cosmetic_ids 5
execute as @e[type=interaction,tag=bell,tag=lobby_cosmetic_displays] run ride @s mount @e[type=item_display,tag=lobby_cosmetic_displays,tag=bell,limit=1]

#> Bowler Hat
summon item_display 9.0 2.375 81 {Tags:["cosmetic", "lobby_cosmetic_displays", "bowler_hat"],item:{id:"diamond_hoe",Count:1b,tag:{CustomModelData:1113}},item_display:"head"}
summon interaction 0 0 0 {Tags:["lobby_cosmetic_displays","bowler_hat"],response:true,width:1,height:1}
scoreboard players set @e[type=interaction,tag=bowler_hat,tag=lobby_cosmetic_displays] cosmetic_ids 6
execute as @e[type=interaction,tag=bowler_hat,tag=lobby_cosmetic_displays] run ride @s mount @e[type=item_display,tag=lobby_cosmetic_displays,tag=bowler_hat,limit=1]

#> Captain's Hat
summon item_display 10.5 2.375 81 {Tags:["cosmetic", "lobby_cosmetic_displays", "captain_hat"],item:{id:"diamond_hoe",Count:1b,tag:{CustomModelData:1115}},item_display:"head"}
summon interaction 0 0 0 {Tags:["lobby_cosmetic_displays","captain_hat"],response:true,width:1,height:1}
scoreboard players set @e[type=interaction,tag=captain_hat,tag=lobby_cosmetic_displays] cosmetic_ids 7
execute as @e[type=interaction,tag=captain_hat,tag=lobby_cosmetic_displays] run ride @s mount @e[type=item_display,tag=lobby_cosmetic_displays,tag=captain_hat,limit=1]

#> Aviator Hat
summon item_display 12.0 2.875 81 {Tags:["cosmetic", "lobby_cosmetic_displays", "aviator_hat"],item:{id:"diamond_hoe",Count:1b,tag:{CustomModelData:1118}},item_display:"head"}
summon interaction 0 0 0 {Tags:["lobby_cosmetic_displays","aviator_hat"],response:true,width:1,height:0.5}
summon interaction 0 0 0 {Tags:["lobby_cosmetic_displays","aviator_hat"],response:true,width:1,height:-1.5}
scoreboard players set @e[type=interaction,tag=aviator_hat,tag=lobby_cosmetic_displays] cosmetic_ids 8
execute as @e[type=interaction,tag=aviator_hat,tag=lobby_cosmetic_displays] run ride @s mount @e[type=item_display,tag=lobby_cosmetic_displays,tag=aviator_hat,limit=1]

#> Fancy "Hat"
summon item_display 13.5 2.875 81 {Tags:["cosmetic", "lobby_cosmetic_displays", "fancy_hat"],item:{id:"diamond_hoe",Count:1b,tag:{CustomModelData:1119}},item_display:"head"}
summon interaction 0 0 0 {Tags:["lobby_cosmetic_displays","fancy_hat"],response:true,width:1,height:0.5}
summon interaction 0 0 0 {Tags:["lobby_cosmetic_displays","fancy_hat"],response:true,width:1,height:-1.5}
scoreboard players set @e[type=interaction,tag=fancy_hat,tag=lobby_cosmetic_displays] cosmetic_ids 9
execute as @e[type=interaction,tag=fancy_hat,tag=lobby_cosmetic_displays] run ride @s mount @e[type=item_display,tag=lobby_cosmetic_displays,tag=fancy_hat,limit=1]


#> Calculate the high bound based of number of displays
scoreboard players set $range display_scrolling 0
execute as @e[type=item_display,tag=lobby_cosmetic_displays] run scoreboard players add $range display_scrolling 150

#> Calculate range
scoreboard players operation $high display_scrolling = $low display_scrolling
scoreboard players operation $high display_scrolling += $range display_scrolling

#> Teleport active displays to the correct height
execute as @e[type=item_display,tag=lobby_cosmetic_displays] at @s run tp @s ~-0.5 ~-5 ~

execute as @e[type=item_display,tag=lobby_cosmetic_displays] store result score @s display_scrolling run data get entity @s Pos[0] 100
execute as @e[type=item_display,tag=lobby_cosmetic_displays,x=-3.5,dx=5.5,y=-5,dy=5,z=79,dz=5] at @s run tp @s ~ ~5 ~

#> Run the update function once so displays are in the correct location
scoreboard players set $temp display_scrolling 0
function mcm:lobby/displays/update_displays
