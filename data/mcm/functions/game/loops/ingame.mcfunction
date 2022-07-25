#> Respawn players who fall out of the void during grace period, kill them if grace period has expired
execute as @a[tag=queued,predicate=!mcm:bounding_boxes/airship] at @s if score $selectedMap CmdData matches 2 if score $graceperiod CmdData matches 1.. run tp @s @e[tag=PlayerSpawn,limit=1,sort=nearest]
execute as @a[tag=queued,predicate=!mcm:bounding_boxes/airship] at @s if score $selectedMap CmdData matches 2 if score $graceperiod CmdData matches ..0 run function mcm:game/playerdeath

#> Clear titles
execute if score $roundtimer GameRules matches 1 if score $gametimer CmdData matches 4900 run title @a clear
execute if score $roundtimer GameRules matches 2 if score $gametimer CmdData matches 11900 run title @a clear

#> Stupid make stupid items stupid not stupid catch on stupid fire stupid and stupid be stupid destroyed by stupid lightning stupid
execute as @e[type=item] run data merge entity @s {Fire:-1s,Invulnerable:1b}

#> Tag all gunners
tag @a[tag=innocent,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}] add gunner
tag @a[nbt=!{Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}] remove gunner

#> Murderers and people who dropped their gun can't pick up guns anymore
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] at @s run data modify entity @s Owner set from entity @a[tag=innocent,tag=!gunner,limit=1,sort=nearest,scores={canPickupGun=..0}] UUID
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] at @s run data modify entity @s Thrower set from entity @a[tag=innocent,tag=!gunner,limit=1,sort=nearest,scores={canPickupGun=..0}] UUID
execute as @e[type=item,tag=gun,nbt={CustomModelData:1111}] at @s if score @a[tag=innocent,limit=1,sort=nearest] canPickupGun matches 1.. run data merge entity @s {PickupDelay:-1s,Age:32768}
execute as @e[type=item,tag=gun,nbt={CustomModelData:1111}] at @s if score @a[tag=innocent,limit=1,sort=nearest] canPickupGun matches 1.. run data merge entity @s {PickupDelay:-1s,Age:32768}
execute as @e[type=item,tag=gun,nbt={CustomModelData:1111}] at @s if score @a[tag=innocent,limit=1,sort=nearest] canPickupGun matches ..0 run data merge entity @s {PickupDelay:0s,Age:1}


#> Multiple murderers can't pick up eachother's knives
# Add this eventually ~John
# Bruh it's been like a month - Topaz

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
execute as @a[nbt={RootVehicle:{Entity:{Tags:["spectatorchair"]}}}] at @s run tag @s add spectating
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

#> If a player has 10 scrap, give gun
execute as @a[tag=innocent,advancements={mcm:item_counts/scrap=true}] at @s run item replace entity @s hotbar.1 with warped_fungus_on_a_stick{NoDrop:1b,Unbreakable:1,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.gun","italic":false}]',Lore:['[{"translate":"mcm.item.gun.lore","italic":false}]']}}
execute as @a[tag=innocent,advancements={mcm:item_counts/scrap=true}] run advancement revoke @s only mcm:item_counts/scrap

#> Give every item the KeyItem tag
tag @e[type=item] add KeyItem

#> Force guns to have the important tags they need
tag @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] add deadDrop
tag @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] add KeyItem
tag @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] add gun
data modify entity @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}},limit=1] Item.tag.NoDrop set value 1b 

#> Murderer drops gun if they somehow pick it up
execute as @a[tag=murderer,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}]}] at @s run loot spawn ~ ~ ~ loot mcm:gun_normal
execute as @a[tag=murderer,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}]}] run clear @s warped_fungus_on_a_stick{CustomModelData:1111}

#> Innocents drop murderer items if they somehow pick them up
# Knife
execute as @a[tag=innocent,nbt={Inventory:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] at @s run loot spawn ~ ~ ~ loot mcm:knife
execute as @a[tag=innocent,nbt={Inventory:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] at @s run clear @s snowball
execute as @e[type=item,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}},limit=1] at @s run data modify entity @s Item.tag.NoDrop set value 1b
tag @e[type=item,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}},limit=1] add knifeCosmetic
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
execute as @a[tag=murderer,nbt={SelectedItem:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1111}}}] at @s positioned as @a[tag=innocent,tag=!spectating,limit=1,sort=nearest] run function mcm:game/dist
execute as @a[tag=murderer,nbt={SelectedItem:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1111}}}] run title @s actionbar ["Closest innocent is ", {"score": {"name": "$out", "objective": "temp"},"color":"gold"}, " blocks away"]

#> Turn the knife snowball into an arrow with the knife item as a passenger
execute as @e[type=snowball] at @s run playsound minecraft:entity.wither.shoot block @a ~ ~ ~ 1 2 0
execute as @e[type=snowball] at @s run summon arrow ~ ~ ~ {life:1100s,Tags:["knife","MapEntity"],Passengers:[{id:"minecraft:item",PickupDelay:20,Tags:["knifeCosmetic","MapEntity","KeyItem"],Item:{id:"minecraft:snowball",Count:1b,tag:{NoDrop:1b,CustomModelData:1111,PickupDelay:10,display:{Name:'[{"translate":"mcm.item.knife","italic":false}]',Lore:['[{"translate":"mcm.item.knife.lore","italic":false}]']}}}}]}
execute as @e[type=arrow,tag=knife] at @s run data modify entity @s Motion set from entity @e[type=snowball,limit=1,sort=nearest] Motion
execute as @e[type=arrow,tag=knife] at @s run data modify entity @s Owner set from entity @e[type=snowball,limit=1,sort=nearest] Owner
kill @e[type=snowball]

#> If the knife item isn't in the world, kill the arrow it was riding
execute unless entity @e[type=item,tag=knifeCosmetic] run kill @e[type=arrow,tag=knife]

#> Make sure knife can only be picked up by murderer
execute as @e[type=item,tag=knifeCosmetic] at @s run data modify entity @s Owner set from entity @a[tag=murderer,limit=1,sort=nearest] UUID
execute as @e[type=item,tag=knifeCosmetic] at @s run data modify entity @s Thrower set from entity @a[tag=murderer,limit=1,sort=nearest] UUID
execute as @e[type=item,tag=knifeCosmetic] at @s unless entity @a[tag=murderer,limit=1,sort=nearest] if entity @e[type=arrow,tag=knife,limit=1,sort=nearest,nbt={inGround:1b}] run data merge entity @s {PickupDelay:-1s,Age:32768}
execute as @e[type=item,tag=knifeCosmetic] at @s if entity @a[tag=murderer,limit=1,sort=nearest] if entity @e[type=arrow,tag=knife,limit=1,sort=nearest,nbt={inGround:1b}] run data merge entity @s {PickupDelay:0s,Age:1}

#> Give the murderer their retrieval back if they have 10 scrap
execute as @a[tag=murderer,advancements={mcm:item_counts/scrap=true}] at @s run tag @s remove retrieved
execute as @a[tag=murderer,advancements={mcm:item_counts/scrap=true}] at @s run clear @s netherite_scrap{CustomModelData:1} 10
execute as @a[tag=murderer,advancements={mcm:item_counts/scrap=true}] at @s run advancement revoke @s only mcm:item_counts/scrap

#> If the murderer threw the knife and hasn't retrieved it before, give them the auto retrieval item
execute as @a[tag=murderer,tag=!retrieved,nbt={Inventory:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] at @s run scoreboard players reset @s canGetRetrieval
execute as @a[tag=murderer,tag=!retrieved,scores={throwKnife=1..}] if entity @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1111}}]}] if entity @e[type=item,tag=knifeCosmetic] run scoreboard players set @s canGetRetrieval 1
execute as @a[tag=murderer,tag=!retrieved,scores={throwKnife=1..}] if score @s canGetRetrieval matches 1.. if entity @e[type=item,tag=knifeCosmetic] run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick{NoDrop:1b,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.knife_retrieve","italic":false}]',Lore:['[{"translate":"mcm.item.knife_retrieve.lore","italic":false}]']}}
execute as @a[tag=murderer,tag=!retrieved,scores={throwKnife=1..}] at @s run scoreboard players reset @s throwKnife
#> Have the auto retrieval item do stuff
execute as @a[tag=murderer,tag=retrieved] at @s run scoreboard players set @s knifeRetrieval 0
execute if score @a[tag=murderer,limit=1,sort=nearest,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] knifeRetrieval matches 1.. run kill @e[type=arrow,tag=knife]
execute if score @a[tag=murderer,limit=1,sort=nearest,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] knifeRetrieval matches 1.. run kill @e[type=item,tag=knifeCosmetic]
execute as @a[tag=murderer,limit=1,sort=nearest,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] at @s if score @s knifeRetrieval matches 1.. run summon lightning_bolt ~ ~ ~
execute as @a[tag=murderer,limit=1,sort=nearest,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] at @s if score @s knifeRetrieval matches 1.. run tag @s add retrieved
execute as @a[tag=murderer,limit=1,sort=nearest,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] at @s if score @s knifeRetrieval matches 1.. run give @s snowball{Unbreakable:1,CustomModelData:1111,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:100,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122419,10812,22346,-21624]}],display:{Name:'[{"translate":"mcm.item.knife","italic":false}]',Lore:['[{"text":"Right click to throw","italic":false}]']}} 1
execute as @a[tag=murderer,limit=1,sort=nearest,nbt={Inventory:[{id:"minecraft:snowball",Count:1b}]}] at @s run clear @s carrot_on_a_stick{CustomModelData:1111}
execute as @a[tag=murderer,limit=1,sort=nearest] at @s if score @s knifeRetrieval matches 1.. run scoreboard players set @s knifeRetrieval 0

#> Clicking the adrenaline item gives buffs
execute as @a[tag=murderer,scores={adrenalineClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1113}}}] run effect give @s speed 5 3 true
execute as @a[tag=murderer,scores={adrenalineClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1113}}}] run effect give @s jump_boost 5 2 true
execute as @a[tag=murderer,scores={adrenalineClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1113}}}] run tag @s add usedAdrenaline
execute as @a[tag=murderer,scores={adrenalineClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1113}}}] at @s run playsound minecraft:entity.generic.drink block @a ~ ~ ~ 1 1 0
execute as @a[tag=murderer,scores={adrenalineClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1113}}}] run clear @s carrot_on_a_stick{CustomModelData:1113}
execute as @a[tag=murderer,scores={adrenalineClick=1..}] run scoreboard players reset @s adrenalineClick

#> Clicking random teleporter teleports everyone except murderer and spectators //@TODO add option to teleport murderer too
execute if entity @a[tag=murderer,tag=!spectating,scores={teleporterClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1112}}}] run tag @e[type=marker,tag=PlayerSpawn] remove Occupied
execute if entity @a[tag=murderer,tag=!spectating,scores={teleporterClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1112}}}] if score $selectedMap CmdData matches 1 as @a[tag=innocent,tag=!spectating] at @s run function mcm:maps/library/tptospawn 
execute if entity @a[tag=murderer,tag=!spectating,scores={teleporterClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1112}}}] if score $selectedMap CmdData matches 1 as @a[tag=innocent,tag=!spectating] at @s run function mcm:maps/library/tptoflipspawn 
execute if entity @a[tag=murderer,tag=!spectating,scores={teleporterClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1112}}}] if score $selectedMap CmdData matches 2 as @a[tag=innocent,tag=!spectating] at @s run function mcm:maps/airship/tptospawn 
execute if entity @a[tag=murderer,tag=!spectating,scores={teleporterClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1112}}}] if score $selectedMap CmdData matches 3 as @a[tag=innocent,tag=!spectating] at @s run function mcm:maps/vineyard/tptospawn
execute if entity @a[tag=murderer,tag=!spectating,scores={teleporterClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1112}}}] if score $selectedMap CmdData matches 4 as @a[tag=innocent,tag=!spectating] at @s run function mcm:maps/launchpad/tptospawn
execute if entity @a[tag=murderer,tag=!spectating,scores={teleporterClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1112}}}] as @a[tag=innocent,tag=!spectating] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 1 1 1
execute if entity @a[tag=murderer,tag=!spectating,scores={teleporterClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1112}}}] as @a[tag=innocent,tag=!spectating] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 1 2 1 
execute if entity @a[tag=murderer,tag=!spectating,scores={teleporterClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1112}}}] as @a[tag=innocent,tag=!spectating] run effect clear @s levitation
execute as @a[tag=murderer,tag=!spectating,scores={teleporterClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1112}}}] at @s run tag @s add usedTeleport
execute as @a[tag=murderer,tag=!spectating,scores={teleporterClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1112}}}] at @s run clear @s carrot_on_a_stick{CustomModelData:1112}
execute as @a[tag=murderer,tag=!spectating,scores={teleporterClick=1..}] at @s run scoreboard players reset @s teleporterClick

#> Win conditions
# Murderer victory
execute if score $graceperiod CmdData matches ..0 if score $deadInnocents CmdData = $innocents CmdData run tellraw @a ["", "\n", {"text":"The Murderer has won!","color":"red"}, "\n"]
execute if score $graceperiod CmdData matches ..0 if score $deadInnocents CmdData = $innocents CmdData run scoreboard players set $murderWin CmdData 1
execute if score $graceperiod CmdData matches ..0 if score $deadInnocents CmdData = $innocents CmdData run scoreboard players set $gamestate CmdData 2

# Innocents victory
execute if score $graceperiod CmdData matches ..0 if score $deadMurderers CmdData = $murderers CmdData run tellraw @a ["", "\n", {"text":"The Innocents have won!","color":"green"}, "\n"]
execute if score $graceperiod CmdData matches ..0 if score $deadMurderers CmdData = $murderers CmdData run scoreboard players set $innocentWin CmdData 1
execute if score $graceperiod CmdData matches ..0 if score $deadMurderers CmdData = $murderers CmdData run scoreboard players set $gamestate CmdData 2

execute if score $graceperiod CmdData matches ..0 unless entity @a[tag=murderer] run tellraw @a ["", "\n", {"text":"The Innocents have won!","color":"green"}, "\n"]
execute if score $graceperiod CmdData matches ..0 unless entity @a[tag=murderer] run scoreboard players set $innocentWin CmdData 1
execute if score $graceperiod CmdData matches ..0 unless entity @a[tag=murderer] run scoreboard players set $gamestate CmdData 2

#> Play ambient sounds
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 1 run function mcm:maps/library/sound
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 2 run function mcm:maps/airship/sound
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 3 run function mcm:maps/vineyard/sound
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 4 run function mcm:maps/launchpad/sound

#> Clear spectator nausea
execute as @a[tag=spectating] run effect clear @s nausea
execute as @a[tag=spectating] run effect clear @s slowness