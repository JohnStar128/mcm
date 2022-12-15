#> Gumdrop Secret Cutscene [WIP - Brownie, Kur]

#Locks player head position
execute as @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] if score $gumdropcutscene CmdData matches 0..387 run tp @s 775.5 -19 -3018 0 0

#Grant Secret Advancement
execute as @a[tag=!spectating,predicate=mcm:bounding_boxes/gumdrop_cutscene,advancements={mcm:secrets/gumdrop/gumdrop=false}] at @s run advancement grant @s only mcm:secrets/gumdrop/gumdrop

#Like the whole entire animation, like all of it
execute if score $gumdropcutscene CmdData matches 60 run place template minecraft:gumdrop_cutscene1 773 -19 -3017
execute if score $gumdropcutscene CmdData matches 100 run kill @e[type=glow_item_frame,tag=gumdrop_cutscene]
execute if score $gumdropcutscene CmdData matches 100 run place template minecraft:gumdrop_cutscene2 773 -19 -3017
execute if score $gumdropcutscene CmdData matches 120 run kill @e[type=glow_item_frame,tag=gumdrop_cutscene]
execute if score $gumdropcutscene CmdData matches 120 run playsound minecraft:block.wool.break master @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] 775.5 -19 -3017.5 1
execute if score $gumdropcutscene CmdData matches 120 run place template minecraft:gumdrop_cutscene3 773 -19 -3017
execute if score $gumdropcutscene CmdData matches 140 run kill @e[type=glow_item_frame,tag=gumdrop_cutscene]
execute if score $gumdropcutscene CmdData matches 140 run playsound minecraft:block.chest.open master @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] 775.5 -19 -3017.5 0.5 2
execute if score $gumdropcutscene CmdData matches 140 run place template minecraft:gumdrop_cutscene4 773 -19 -3017
execute if score $gumdropcutscene CmdData matches 165 run kill @e[type=glow_item_frame,tag=gumdrop_cutscene]
execute if score $gumdropcutscene CmdData matches 165 run playsound minecraft:block.chest.open master @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] 775.5 -19 -3017.5 0.5 1.5
execute if score $gumdropcutscene CmdData matches 165 run playsound minecraft:block.water.ambient master @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] 775.5 -19 -3017.5 1 0.5
execute if score $gumdropcutscene CmdData matches 165 run place template minecraft:gumdrop_cutscene5 773 -19 -3017
execute if score $gumdropcutscene CmdData matches 205 run kill @e[type=glow_item_frame,tag=gumdrop_cutscene]
execute if score $gumdropcutscene CmdData matches 205 run playsound minecraft:block.water.ambient master @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] 775.5 -19 -3017.5 1 0.5
execute if score $gumdropcutscene CmdData matches 205 run place template minecraft:gumdrop_cutscene6 773 -19 -3017
execute if score $gumdropcutscene CmdData matches 246 run kill @e[type=glow_item_frame,tag=gumdrop_cutscene]
execute if score $gumdropcutscene CmdData matches 246 run playsound minecraft:block.water.ambient master @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] 775.5 -19 -3017.5 0.8 0.5
execute if score $gumdropcutscene CmdData matches 246 run place template minecraft:gumdrop_cutscene7 773 -19 -3017
execute if score $gumdropcutscene CmdData matches 286 run kill @e[type=glow_item_frame,tag=gumdrop_cutscene]
execute if score $gumdropcutscene CmdData matches 286 run stopsound @a[predicate=mcm:bounding_boxes/gumdrop_cutscene]
execute if score $gumdropcutscene CmdData matches 286 run playsound minecraft:block.chest.close master @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] 775.5 -19 -3017.5 0.2 1.5
execute if score $gumdropcutscene CmdData matches 286 run place template minecraft:gumdrop_cutscene8 773 -19 -3017
execute if score $gumdropcutscene CmdData matches 290 run playsound minecraft:block.pointed_dripstone.drip_water master @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] 775.5 -19 -3017.5 0.2 1
execute if score $gumdropcutscene CmdData matches 300 run playsound minecraft:block.pointed_dripstone.drip_water master @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] 775.5 -19 -3017.5 0.2 1
execute if score $gumdropcutscene CmdData matches 315 run playsound minecraft:block.pointed_dripstone.drip_water master @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] 775.5 -19 -3017.5 0.2 1
execute if score $gumdropcutscene CmdData matches 326 run kill @e[type=glow_item_frame,tag=gumdrop_cutscene]
execute if score $gumdropcutscene CmdData matches 326 run stopsound @a[predicate=mcm:bounding_boxes/gumdrop_cutscene]
execute if score $gumdropcutscene CmdData matches 326 run playsound minecraft:entity.player.hurt master @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] 775.5 -19 -3017.5 1 1
execute if score $gumdropcutscene CmdData matches 326 run playsound minecraft:entity.blaze.death master @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] 775.5 -19 -3017.5 0.5 0.1
execute if score $gumdropcutscene CmdData matches 326 run place template minecraft:gumdrop_cutscene9 773 -19 -3017
execute if score $gumdropcutscene CmdData matches 329 run kill @e[type=glow_item_frame,tag=gumdrop_cutscene]
execute if score $gumdropcutscene CmdData matches 329 run place template minecraft:gumdrop_cutscene10 773 -19 -3017
execute if score $gumdropcutscene CmdData matches 388 run kill @e[type=glow_item_frame,tag=gumdrop_cutscene]

#Teleport players back to random player spawns when cutscene ends and set to adventure

execute if score $gumdropcutscene CmdData matches 387 as @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] run gamemode adventure
execute if score $gumdropcutscene CmdData matches 388 as @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] run tp @s @e[tag=PlayerSpawn,tag=!available,limit=1,sort=random]