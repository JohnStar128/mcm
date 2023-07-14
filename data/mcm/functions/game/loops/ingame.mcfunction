#> Clear titles
execute if score $roundtimer GameRules matches 10 if score $gametimer CmdData matches 11900 run title @a clear
execute if score $roundtimer GameRules matches 9 if score $gametimer CmdData matches 10700 run title @a clear
execute if score $roundtimer GameRules matches 8 if score $gametimer CmdData matches 9500 run title @a clear
execute if score $roundtimer GameRules matches 7 if score $gametimer CmdData matches 8300 run title @a clear
execute if score $roundtimer GameRules matches 6 if score $gametimer CmdData matches 7100 run title @a clear
execute if score $roundtimer GameRules matches 5 if score $gametimer CmdData matches 5900 run title @a clear

#> Keep track of alive players for stats
execute if score $graceperiod CmdData matches 1.. as @a[tag=queued] run scoreboard players set @s game_stats 0
execute if score $graceperiod CmdData matches ..0 as @a[tag=queued,tag=!spectating] run scoreboard players add @s time_alive 1
execute as @a[tag=gunner, tag=!gunner_stat] run tag @s add gunner_stat

#> Make sure items can't be destroyed by lightning or fire
execute as @e[type=item] run data merge entity @s {Fire:-1s,Invulnerable:1b}

#> Tag all gunners TODO change this to advancement
tag @a[tag=innocent,tag=!gunner,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}] add gunner
tag @a[nbt=!{Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}] remove gunner

#> Murderers and people who dropped their gun can't pick up guns anymore
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] at @s run data modify entity @s Owner set from entity @a[tag=innocent,limit=1,sort=nearest,scores={canPickupGun=..0}] UUID
execute as @e[type=item,tag=gun,nbt={CustomModelData:1111}] at @s if score @a[tag=innocent,limit=1,sort=nearest] canPickupGun matches 1.. run data merge entity @s {PickupDelay:-1s,Age:32768}
execute as @e[type=item,tag=gun,nbt={CustomModelData:1111}] at @s if score @a[tag=innocent,limit=1,sort=nearest] canPickupGun matches 1.. run data merge entity @s {PickupDelay:-1s,Age:32768}
execute as @e[type=item,tag=gun,nbt={CustomModelData:1111}] at @s if score @a[tag=innocent,limit=1,sort=nearest] canPickupGun matches ..0 run data merge entity @s {PickupDelay:0s,Age:1}

#> Multiple murderers can't pick up eachother's knives
execute as @e[type=item,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}}] run data modify entity @s Owner set from entity @s Thrower

#> Minutely reminders
function mcm:game/loops/game_timer

#> Countdown grace period
execute if score $graceperiod CmdData matches 1.. run scoreboard players remove $graceperiod CmdData 1
execute if score $graceperiod CmdData matches 1 if score $pickedroles CmdData matches 0 run function mcm:game/pick_roles
execute if score $graceperiod CmdData matches 1 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1 0

#> Remove players from the game who leave during grace period and rejoin after roles have been picked
execute if score $pickedroles CmdData matches 1 as @a[tag=queued,tag=!innocent,tag=!murderer,tag=!gunner] run tag @s add spectator
execute if score $pickedroles CmdData matches 1 as @a[tag=queued,tag=!innocent,tag=!murderer,tag=!gunner] run team join nametags @s
execute if score $pickedroles CmdData matches 1 as @a[tag=queued,tag=!innocent,tag=!murderer,tag=!gunner] run gamemode spectator
execute if score $pickedroles CmdData matches 1 as @a[tag=queued,tag=!innocent,tag=!murderer,tag=!gunner] run tag @s remove queued

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
execute if score $selectedMap CmdData matches 5 run function mcm:maps/cyberpunk/functionality
execute if score $selectedMap CmdData matches 6 run function mcm:maps/riverboat/functionality
execute if score $selectedMap CmdData matches 7 run function mcm:maps/industry/functionality
execute if score $selectedMap CmdData matches 8 run function mcm:maps/train/functionality
execute if score $selectedMap CmdData matches 9 run function mcm:maps/cabin/functionality

#> Allow spectating
execute as @a[nbt={RootVehicle:{Entity:{Tags:["spectatorchair"]}}}] run function mcm:game/spectate

#> Track dead innocents
execute store result score $innocents CmdData if entity @a[tag=innocent]
execute store result score $deadInnocents CmdData if entity @a[tag=innocent,scores={dead=1..}]

#> Track dead murderers
execute store result score $murderers CmdData if entity @a[tag=murderer]
execute store result score $deadMurderers CmdData if entity @a[tag=murderer,scores={dead=1..}]

#> Scrap spawning timer
execute if score $graceperiod CmdData matches 0 run scoreboard players add $scrapclock CmdData 1
execute if score $graceperiod CmdData matches 0 if score $scrapclock CmdData matches 20.. as @a[tag=queued, tag=!spectating, predicate=mcm:scraprng] run function mcm:game/loops/spawnscrap
execute if score $graceperiod CmdData matches 0 if score $scrapclock CmdData matches 20.. run scoreboard players set $scrapclock CmdData 0

#> Give every item the KeyItem tag
tag @e[type=item] add KeyItem

#> Force guns to have the important tags they need
tag @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] add deadDrop
tag @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] add KeyItem
tag @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] add gun

#> Replace NoDrop-less guns in inventories with NoDrop guns
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{NoDrop:0b}}]}] run function mcm:game/items/gun/give
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
execute as @a[tag=murderer,tag=!spectating,predicate=mcm:items/hold_tracker] at @s positioned as @a[tag=innocent,tag=!spectating,limit=1,sort=nearest] run function mcm:game/items/player_tracker/find_player

#> If the knife item isn't in the world, kill the arrow it was riding
execute unless entity @e[type=item,tag=knifeCosmetic] run kill @e[type=arrow,tag=knife]
execute unless entity @e[type=item,tag=knifeCosmetic] run kill @e[type=marker,tag=knife_restore_point]

#> If the knife gets stuck in a block, teleport it slightly towards its owner
execute as @e[type=item,tag=knifeCosmetic] at @s unless block ~ ~ ~ air run function mcm:game/items/knife/stuck

execute store success score $toggle CmdData if score $toggle CmdData matches 0
execute as @e[type=item,tag=knifeCosmetic] store result entity @s Air short 1 run scoreboard players get $toggle CmdData

#> Make sure knife can only be picked up by murderer
execute as @e[type=item,tag=knifeCosmetic] at @s unless entity @a[tag=murderer,limit=1,sort=nearest] run data merge entity @s {PickupDelay:-1s,Age:32768}
execute as @e[type=item,tag=knifeCosmetic] at @s if entity @a[tag=murderer,limit=1,sort=nearest,nbt={PickupDelay:-1s}] run data merge entity @s {PickupDelay:0s,Age:1}

#> If the murderer threw the knife and hasn't retrieved it before, give them the auto retrieval item
execute as @a[tag=murderer,tag=!retrieved,scores={throwKnife=1..}] run function mcm:game/items/knife/give_retrieve_mainhand
execute as @a[tag=murderer,tag=!retrieved,scores={droppedKnife=1..}] run function mcm:game/items/knife/give_retrieve

#> Remove retrieval item if they pick up the knife and reset scores
execute as @a[tag=murderer,nbt={Inventory:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] run clear @s carrot_on_a_stick{CustomModelData:1111}
execute as @a[tag=murderer,scores={throwKnife=1..}] run scoreboard players set @s retrieval_delay 10
scoreboard players reset @a[tag=murderer] throwKnife
scoreboard players reset @a[tag=murderer] droppedKnife

#> Have the auto retrieval item do stuff
scoreboard players remove @a[tag=murderer] retrieval_delay 1
execute as @a[tag=murderer,tag=retrieved] run scoreboard players reset @s knifeRetrieval
execute as @a[tag=murderer,scores={retrieval_delay=1..}] run scoreboard players reset @s knifeRetrieval
execute as @a[tag=murderer,scores={knifeRetrieval=1..,retrieval_delay=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] at @s run function mcm:game/items/knife/retrieve

#> Clicking the adrenaline item gives buffs
execute as @a[tag=murderer,scores={adrenalineClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1113}}}] at @s run function mcm:game/items/adrenaline/use

#> Clicking random teleporter teleports everyone except murderer and spectators //@TODO add option to teleport murderer too
execute as @a[tag=murderer,tag=!spectating,scores={teleporterClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1112}}}] unless score $launchTime CmdData matches 1..720 run function mcm:game/items/teleporter/use
execute if score $launchTime CmdData matches 1..720 run scoreboard players reset @a teleporterClick


#> Better death message system
execute if entity @a[advancements={mcm:hit_detection/killed_player=true}] run tellraw @a[scores={dead=1}] {"translate":"mcm.game.killedby","color":"gold","with":[{"selector":"@a[advancements={mcm:hit_detection/killed_player=true},sort=nearest,limit=1]","color":"red"}]}
execute if entity @a[advancements={mcm:hit_detection/gun_hit=true}] run tellraw @a[scores={dead=1}] {"translate":"mcm.game.killedby","color":"gold","with":[{"selector":"@a[advancements={mcm:hit_detection/killed_player=true},sort=nearest,limit=1]","color":"red"}]}
execute as @a[scores={dead=1}] on attacker run scoreboard players add @s game_stats 1
execute as @a[scores={dead=1}] run scoreboard players set @s dead 2
advancement revoke @a[advancements={mcm:hit_detection/killed_player=true}] only mcm:hit_detection/killed_player


#> Win conditions
# Murderer victory
execute if score $graceperiod CmdData matches ..0 if score $deadInnocents CmdData = $innocents CmdData if score $murderers GameRules matches ..1 run tellraw @a ["\n", {"translate":"mcm.game.murderer.win.chat","color":"red"}, "\n"]
execute if score $graceperiod CmdData matches ..0 if score $deadInnocents CmdData = $innocents CmdData if score $murderers GameRules matches 2.. run tellraw @a ["\n", {"translate":"mcm.game.murderer.win.chat","color":"red"}, "\n"]
execute if score $graceperiod CmdData matches ..0 if score $deadInnocents CmdData = $innocents CmdData run scoreboard players set $murderWin CmdData 1
execute if score $graceperiod CmdData matches ..0 if score $deadInnocents CmdData = $innocents CmdData run scoreboard players set $gamestate CmdData 2

# Innocents victory
execute if score $graceperiod CmdData matches ..0 if score $deadMurderers CmdData = $murderers CmdData unless score $murderWin CmdData matches 1 run tellraw @a ["\n", {"translate":"mcm.game.innocent.win.chat","color":"green"}, "\n"]
execute if score $graceperiod CmdData matches ..0 if score $deadMurderers CmdData = $murderers CmdData unless score $murderWin CmdData matches 1 run scoreboard players set $innocentWin CmdData 1
execute if score $graceperiod CmdData matches ..0 if score $deadMurderers CmdData = $murderers CmdData unless score $murderWin CmdData matches 1 run scoreboard players set $gamestate CmdData 2
# If the murderer logs out specifically
execute if score $graceperiod CmdData matches ..0 unless entity @a[tag=murderer] unless score $murderWin CmdData matches 1 run tellraw @a ["\n", {"translate":"mcm.game.innocent.win.chat","color":"green"}, "\n"]
execute if score $graceperiod CmdData matches ..0 unless entity @a[tag=murderer] unless score $murderWin CmdData matches 1 run scoreboard players set $innocentWin CmdData 1
execute if score $graceperiod CmdData matches ..0 unless entity @a[tag=murderer] unless score $murderWin CmdData matches 1 run scoreboard players set $gamestate CmdData 2

#> Play ambient sounds
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 1 run function mcm:maps/library/sound
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 2 run function mcm:maps/airship/sound
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 3 run function mcm:maps/vineyard/sound
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 4 run function mcm:maps/launchpad/sound
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 5 run function mcm:maps/cyberpunk/sound
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 6 run function mcm:maps/riverboat/sound
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 7 run function mcm:maps/industry/sound
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 8 run function mcm:maps/train/sound
execute if predicate mcm:soundrng if score $selectedMap CmdData matches 9 run function mcm:maps/cabin/sound

#> Clear spectator nausea
execute as @a[tag=spectating] run effect clear @s nausea
execute as @a[tag=spectating] run effect clear @s slowness

#> Show particles above murderers to identify their teammates
scoreboard players operation $murderer_particles math = $gametimer CmdData
scoreboard players operation $murderer_particles math %= $twenty math
execute as @a[tag=murderer,tag=!spectating] at @s run particle dust 1.0 0.1 0.1 1.0 ~ ~2.5 ~ 0.1 0.1 0.1 0 1 force @a[tag=murderer,distance=1..]