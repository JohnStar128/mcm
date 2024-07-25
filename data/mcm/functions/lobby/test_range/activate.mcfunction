#> Summon test range entities and activate state
execute positioned 23 1 1 run summon marker ~ ~ ~ {Tags:["test_range_entity","test_range_target_spawn"]}
execute positioned 23 1 -14 run summon marker ~ ~ ~ {Tags:["test_range_entity","test_range_target_spawn"]}
execute positioned 34 1 -11 run summon marker ~ ~ ~ {Tags:["test_range_entity","test_range_target_spawn"]}
execute positioned 51 1 -20 run summon marker ~ ~ ~ {Tags:["test_range_entity","test_range_target_spawn"]}
execute positioned 52 1 -8 run summon marker ~ ~ ~ {Tags:["test_range_entity","test_range_target_spawn"]}
execute positioned 38 1 -6 run summon marker ~ ~ ~ {Tags:["test_range_entity","test_range_target_spawn"]}

execute positioned 35 2 -17.0 run summon item_display ~ ~0.5 ~ {item:{id:barrier,Count:1b,tag:{}},Tags:["test_range_entity","test_range_clear_display"]}
execute positioned 35 2 -17.45 run summon interaction ~ ~ ~ {height:1,width:1,Tags:["test_range_entity","test_range_clear_interaction"],response:1b}
execute positioned 36 2 -17.0 run summon item_display ~ ~0.5 ~ {item:{id:warped_fungus_on_a_stick,Count:1b,tag:{}},Rotation:[90.0f,-45.0f],Tags:["test_range_entity","test_range_gun_display"],item_display:"ground"}
execute positioned 36 2 -17.45 run summon interaction ~ ~ ~ {height:1,width:1,Tags:["test_range_entity","test_range_interaction"],response:1b}
data modify entity @e[type=item_display,tag=test_range_gun_display,limit=1] item.components merge from storage mcm:items gun.nbt
execute positioned 37 2 -17.0 run summon item_display ~-0.25 ~0.5 ~ {item:{id:snowball,Count:1b,tag:{}},Rotation:[90.0f,0.0f],Tags:["test_range_entity","test_range_knife_display"],item_display:"ground"}
execute positioned 37 2 -17.45 run summon interaction ~ ~ ~ {height:1,width:1,Tags:["test_range_entity","test_range_interaction"],response:1b}
data modify entity @e[type=item_display,tag=test_range_knife_display,limit=1] item.components merge from storage mcm:items knife.nbt
execute positioned 38 2 -17.0 run summon item_display ~ ~0.5 ~0.25 {item:{id:stick,Count:1b,tag:{}},Rotation:[180.0f,-90.0f],Tags:["test_range_entity","test_range_tracker_display"],item_display:"ground"}
execute positioned 38 2 -17.45 run summon interaction ~ ~ ~ {height:1,width:1,Tags:["test_range_entity","test_range_interaction"],response:1b}
data modify entity @e[type=item_display,tag=test_range_tracker_display,limit=1] item.components merge from storage mcm:items player_tracker.nbt
execute positioned 39 2 -17.0 run summon item_display ~ ~0.5 ~0.1 {item:{id:carrot_on_a_stick,Count:1b,tag:{}},Rotation:[-12.5f,0.0f],Tags:["test_range_entity","test_range_teleporter_display"],item_display:"ground"}
execute positioned 39 2 -17.45 run summon interaction ~ ~ ~ {height:1,width:1,Tags:["test_range_entity","test_range_interaction"],response:1b}
data modify entity @e[type=item_display,tag=test_range_teleporter_display,limit=1] item.components merge from storage mcm:items teleporter.nbt
execute positioned 40 2 -17.0 run summon item_display ~-0.25 ~0.25 ~ {item:{id:carrot_on_a_stick,Count:1b,tag:{}},Rotation:[90.0f,-45.0f],Tags:["test_range_entity","test_range_adrenaline_display"],item_display:"ground"}
execute positioned 40 2 -17.45 run summon interaction ~ ~ ~ {height:1,width:1,Tags:["test_range_entity","test_range_interaction"],response:1b}
data modify entity @e[type=item_display,tag=test_range_adrenaline_display,limit=1] item.components merge from storage mcm:items adrenaline.nbt

execute positioned 34.0 1 -17 run summon text_display ~ ~ ~ {Tags:["test_range_entity","test_range_text_back"],alignment:"center"}
data merge entity @e[type=text_display,tag=test_range_text_back,limit=1] {text:'{"translate":"mcm.lobby.test_range.back","color":"gold","bold":false,"italic":false}'}
execute positioned 38.0 3 -17 run summon text_display ~ ~ ~ {Tags:["test_range_entity","test_range_text_select"],alignment:"center"}
data merge entity @e[type=text_display,tag=test_range_text_select,limit=1] {text:'{"translate":"mcm.lobby.test_range.select_item","color":"gold","bold":false,"italic":false}'}

scoreboard players set $active test_range 1
