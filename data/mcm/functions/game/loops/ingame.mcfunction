#> Clear titles
execute if score $roundtimer GameRules matches 1 if score $gametimer CmdData matches 4900 run title @a clear
execute if score $roundtimer GameRules matches 2 if score $gametimer CmdData matches 11900 run title @a clear

#> Make sure items can't be destroyed by lightning or fire
execute as @e[type=item] run data merge entity @s {Fire:-1s,Invulnerable:1b}

#> Tag all gunners TODO change this to advancement
tag @a[tag=innocent,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}] add gunner
tag @a[nbt=!{Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}] remove gunner

#> Murderers and people who dropped their gun can't pick up guns anymore
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] at @s run data modify entity @s Owner set from entity @a[tag=innocent,limit=1,sort=nearest,scores={canPickupGun=..0}] UUID
execute as @e[type=item,tag=gun,nbt={CustomModelData:1111}] at @s if score @a[tag=innocent,limit=1,sort=nearest] canPickupGun matches 1.. run data merge entity @s {PickupDelay:-1s,Age:32768}
execute as @e[type=item,tag=gun,nbt={CustomModelData:1111}] at @s if score @a[tag=innocent,limit=1,sort=nearest] canPickupGun matches 1.. run data merge entity @s {PickupDelay:-1s,Age:32768}
execute as @e[type=item,tag=gun,nbt={CustomModelData:1111}] at @s if score @a[tag=innocent,limit=1,sort=nearest] canPickupGun matches ..0 run data merge entity @s {PickupDelay:0s,Age:1}

#> Multiple murderers can't pick up eachother's knives
execute as @e[type=item,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}}] run data modify entity @s Owner set from entity @s Thrower

#> Minutely reminders
execute if score $graceperiod CmdData matches ..1 if score $roundtimer GameRules matches 1 run function mcm:game/loops/5minute
execute if score $graceperiod CmdData matches ..1 if score $roundtimer GameRules matches 2 run function mcm:game/loops/10minute

#> Countdown grace period
execute if score $graceperiod CmdData matches 1.. run scoreboard players remove $graceperiod CmdData 1
execute if score $graceperiod CmdData matches 1 if score $pickedroles CmdData matches 0 run function mcm:game/pick_roles
execute if score $graceperiod CmdData matches 1 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1 0

#> Set scores needed for item pickup related stuffs //NOTE The score value is backwards from the seemingly obvious way it should work. 1 means they can't, 0 means they can
scoreboard players set @a[tag=murderer] canPickupGun 1
scoreboard players set @a[tag=lostGun] canPickupGun 1
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}] canPickupGun 1
scoreboard players set @a[tag=innocent,tag=!lostGun,nbt=!{Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}] canPickupGun 0

#> Map specific functionality
execute if score $selectedMap CmdData matches 1 run function mcm:maps/library/functionality
execute if score $selectedMap CmdData matches 2 run function mcm:maps/airship/functionality
execute if score $selectedMap CmdData matches 3 run function mcm:maps/vineyard/functionality
execute if score $selectedMap CmdData matches 4 run function mcm:maps/launchpad/functionality

#> Allow spectating
execute as @a[nbt={RootVehicle:{Entity:{Tags:["spectatorchair"]}}}] run tag @s add spectating
execute as @a[nbt={RootVehicle:{Entity:{Tags:["spectatorchair"]}}}] run tellraw @s ["", {"text":"You are now spectating the game","color":"green","italic":true}]
execute as @a[nbt={RootVehicle:{Entity:{Tags:["spectatorchair"]}}}] at @s run gamemode spectator @s

#> Keep spectators inbounds
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 1 if score $library_flip CmdData matches 0 unless predicate mcm:bounding_boxes/library run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 1 if score $library_flip CmdData matches 0 unless predicate mcm:bounding_boxes/library run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 1 if score $library_flip CmdData matches 1 unless predicate mcm:bounding_boxes/library_flipped run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 1 if score $library_flip CmdData matches 1 unless predicate mcm:bounding_boxes/library_flipped run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 2 unless predicate mcm:bounding_boxes/airship run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 2 unless predicate mcm:bounding_boxes/airship run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 3 unless predicate mcm:bounding_boxes/vineyard run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 3 unless predicate mcm:bounding_boxes/vineyard run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 4 unless predicate mcm:bounding_boxes/launchpad run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 4 unless predicate mcm:bounding_boxes/launchpad run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0

#> Track dead innocents
execute store result score $innocents CmdData if entity @a[tag=innocent]
execute store result score $deadInnocents CmdData if entity @a[tag=innocent,scores={dead=1..}]

#> Track dead murderers
execute store result score $murderers CmdData if entity @a[tag=murderer]
execute store result score $deadMurderers CmdData if entity @a[tag=murderer,scores={dead=1..}]

#> Scrap spawning timer
execute if score $graceperiod CmdData matches 0 run scoreboard players add $scrapclock CmdData 1
execute if score $graceperiod CmdData matches 0 if score $scrapclock CmdData matches 20.. if predicate mcm:scraprng run function mcm:game/loops/spawnscrap
execute if score $graceperiod CmdData matches 0 if score $scrapclock CmdData matches 20.. run scoreboard players set $scrapclock CmdData 0

#> Give every item the KeyItem tag
tag @e[type=item] add KeyItem

#> Force guns to have the important tags they need
tag @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] add deadDrop
tag @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] add KeyItem
tag @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] add gun

#> Replace NoDrop-less guns in inventories with NoDrop guns
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{NoDrop:0b}}]}] run item replace entity @s hotbar.1 with warped_fungus_on_a_stick{NoDrop:1b,Unbreakable:1,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.gun","italic":false}]',Lore:['[{"translate":"mcm.item.gun.lore","italic":false}]']}}
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{NoDrop:0b}}]}] run clear @s warped_fungus_on_a_stick{NoDrop:0b}

#> Murderer drops gun if they somehow pick it up
execute as @a[tag=murderer,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}]}] at @s run loot spawn ~ ~ ~ loot mcm:gun_normal
execute as @a[tag=murderer,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}]}] run clear @s warped_fungus_on_a_stick{CustomModelData:1111}

#> Innocents drop murderer items if they somehow pick them up
# Knife
execute as @a[tag=innocent,nbt={Inventory:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] at @s run loot spawn ~ ~ ~ loot mcm:knife
execute as @a[tag=innocent,nbt={Inventory:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] at @s run clear @s snowball
# Player tracker
execute as @a[tag=innocent,nbt={Inventory:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1111}}]}] at @s run loot spawn ~ ~ ~ loot mcm:player_tracker
execute as @a[tag=innocent,nbt={Inventory:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1111}}]}] at @s run clear @s stick
# Teleporter
execute as @a[tag=innocent,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1112}}]}] at @s run loot spawn ~ ~ ~ loot mcm:teleporter
execute as @a[tag=innocent,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1112}}]}] at @s run clear @s carrot_on_a_stick{CustomModelData:1112}
# Adrenaline
execute as @a[tag=innocent,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1113}}]}] at @s run loot spawn ~ ~ ~ loot mcm:adrenaline
execute as @a[tag=innocent,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1113}}]}] at @s run clear @s carrot_on_a_stick{CustomModelData:1113}

#> Clear scrap from players with a gun
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}] if entity @s[nbt={Inventory:[{id:"minecraft:netherite_scrap"}]}] run clear @s netherite_scrap

#> Player tracker (Math stuff courtesy of some dude on MCC Discord rx)
execute as @a[tag=murderer,tag=!spectating,nbt={SelectedItem:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1111}}}] at @s positioned as @a[tag=innocent,tag=!spectating,limit=1,sort=nearest] run function mcm:game/items/player_tracker/find_player

#> Knife throwing
execute as @e[type=snowball] at @s run function mcm:game/items/knife/throw

#> If the knife item isn't in the world, kill the arrow it was riding
execute unless entity @e[type=item,tag=knifeCosmetic] run kill @e[type=arrow,tag=knife]

#> Make sure knife can only be picked up by murderer
execute as @e[type=item,tag=knifeCosmetic] at @s unless entity @a[tag=murderer,limit=1,sort=nearest] run data merge entity @s {PickupDelay:-1s,Age:32768}
execute as @e[type=item,tag=knifeCosmetic] at @s if entity @a[tag=murderer,limit=1,sort=nearest,nbt={PickupDelay:-1s}] run data merge entity @s {PickupDelay:0s,Age:1}

#> If the murderer threw the knife and hasn't retrieved it before, give them the auto retrieval item TODO use something more efficient to check
execute as @a[tag=murderer,tag=!retrieved,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1111}}]},nbt=!{Inventory:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] if entity @e[type=item,tag=knifeCosmetic] run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick{NoDrop:1b,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.knife_retrieve","italic":false}]',Lore:['[{"translate":"mcm.item.knife_retrieve.lore","italic":false}]']}}

#> Remove retrieval item if they pick up the knife and reset scores
execute as @a[tag=murderer,nbt={Inventory:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] run clear @s carrot_on_a_stick{CustomModelData:1111}
execute as @a[tag=murderer] at @s run scoreboard players reset @s throwKnife

#> Have the auto retrieval item do stuff
execute as @a[tag=murderer,tag=retrieved] run scoreboard players reset @s knifeRetrieval
execute as @a[tag=murderer,scores={knifeRetrieval=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] at @s run function mcm:game/items/knife/retrieve

#> Clicking the adrenaline item gives buffs
execute as @a[tag=murderer,scores={adrenalineClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1113}}}] at @s run function mcm:game/items/adrenaline/use

#> Clicking random teleporter teleports everyone except murderer and spectators //@TODO add option to teleport murderer too
execute as @a[tag=murderer,tag=!spectating,scores={teleporterClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1112}}}] run function mcm:game/items/teleporter/use

#> Win conditions
# Murderer victory
execute if score $graceperiod CmdData matches ..0 if score $deadInnocents CmdData = $innocents CmdData if score $murderers GameRules matches ..1 run tellraw @a ["", "\n", {"text":"The Murderer has won!","color":"red"}, "\n"]
execute if score $graceperiod CmdData matches ..0 if score $deadInnocents CmdData = $innocents CmdData if score $murderers GameRules matches 2.. run tellraw @a ["", "\n", {"text":"The Murderers have won!","color":"red"}, "\n"]
execute if score $graceperiod CmdData matches ..0 if score $deadInnocents CmdData = $innocents CmdData run scoreboard players set $murderWin CmdData 1
execute if score $graceperiod CmdData matches ..0 if score $deadInnocents CmdData = $innocents CmdData run scoreboard players set $gamestate CmdData 2

# Innocents victory
execute if score $graceperiod CmdData matches ..0 if score $deadMurderers CmdData = $murderers CmdData unless score $murderWin CmdData matches 1 run tellraw @a ["", "\n", {"text":"The Innocents have won!","color":"green"}, "\n"]
execute if score $graceperiod CmdData matches ..0 if score $deadMurderers CmdData = $murderers CmdData unless score $murderWin CmdData matches 1 run scoreboard players set $innocentWin CmdData 1
execute if score $graceperiod CmdData matches ..0 if score $deadMurderers CmdData = $murderers CmdData unless score $murderWin CmdData matches 1 run scoreboard players set $gamestate CmdData 2
# If the murderer logs out specifically
execute if score $graceperiod CmdData matches ..0 unless entity @a[tag=murderer] unless score $murderWin CmdData matches 1 run tellraw @a ["", "\n", {"text":"The Innocents have won!","color":"green"}, "\n"]
execute if score $graceperiod CmdData matches ..0 unless entity @a[tag=murderer] unless score $murderWin CmdData matches 1 run scoreboard players set $innocentWin CmdData 1
execute if score $graceperiod CmdData matches ..0 unless entity @a[tag=murderer] unless score $murderWin CmdData matches 1 run scoreboard players set $gamestate CmdData 2

#> Play ambient sounds
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 1 run function mcm:maps/library/sound
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 2 run function mcm:maps/airship/sound
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 3 run function mcm:maps/vineyard/sound
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 4 run function mcm:maps/launchpad/sound

#> Clear spectator nausea
execute as @a[tag=spectating] run effect clear @s nausea
execute as @a[tag=spectating] run effect clear @s slowness

#> Better death message system
execute if entity @a[advancements={mcm:hit_detection/killed_player=true}] run tellraw @a[scores={dead=1}] {"text":"You were killed by ","color":"gold","extra":[{"selector":"@a[advancements={mcm:hit_detection/killed_player=true},sort=nearest,limit=1]","color":"red"}]}
execute as @a[scores={dead=1}] run scoreboard players set @s dead 2
advancement revoke @a[advancements={mcm:hit_detection/killed_player=true}] only mcm:hit_detection/killed_player

#> Show particles above murderers to identify their teammates
scoreboard players operation $murderer_particles math = $gametimer CmdData
scoreboard players operation $murderer_particles math %= $twenty math
execute as @a[tag=murderer,tag=!spectating] at @s run particle dust 1.0 0.1 0.1 1.0 ~ ~2.5 ~ 0.1 0.1 0.1 0 1 force @a[tag=murderer]