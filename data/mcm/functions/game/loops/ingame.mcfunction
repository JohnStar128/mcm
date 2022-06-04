#> 5 minute countdown
#scoreboard players remove $gametimer CmdData 1

#> Kill every item that isn't a key item
kill @e[type=item,tag=!KeyItem]

#> Minutely reminders
execute if score $roundtimer CmdData matches 1 run function mcm:game/loops/5minute
execute if score $roundtimer CmdData matches 2 run function mcm:game/loops/10minute

#> Countdown grace period
execute if score $graceperiod CmdData matches 1.. run scoreboard players remove $graceperiod CmdData 1
execute if score $graceperiod CmdData matches ..1 run team modify nametags friendlyFire true
execute if score $graceperiod CmdData matches ..1 if score $pickedroles CmdData matches 0 run function mcm:game/pick_roles
execute if score $graceperiod CmdData matches 1 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1 0

#> Set scores needed for item pickup related stuffs //NOTE The score value is backwards from the seemingly obvious way it should work. 1 means they can't, 0 means they can
scoreboard players set @a[tag=murderer] canPickupGun 1
scoreboard players set @a[tag=innocent] canPickupGun 0

#> Map specific functionality I put in everytick instead of ingame for some reason
function mcm:maps/airship/functionality
function mcm:maps/library/functionality

#> Keep spectators inbounds
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 1 unless predicate mcm:bounding_boxes/library run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 1 unless predicate mcm:bounding_boxes/library run tp @s @e[tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 2 unless predicate mcm:bounding_boxes/airship run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 2 unless predicate mcm:bounding_boxes/airship run tp @s @e[tag=SpectatorSpawn,limit=1,sort=nearest]


#> Track dead innocents
execute store result score $innocents CmdData run execute if entity @e[tag=innocent]
execute store result score $deadInnocents CmdData run execute if entity @e[tag=innocent,scores={dead=1..}]

#> Drop gun if gunner is killed
tag @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b}}] add gun
execute as @a[tag=innocent,scores={dead=1..},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}] at @s run summon item ~ ~ ~ {Tags:["deadDrop","KeyItem"],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Gun\",\"italic\":\"false\"}"}}}}
execute as @a[tag=innocent,scores={dead=1..},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}] at @s run clear @s warped_fungus_on_a_stick 

#> Murderers and people who dropped their gun can't pick up guns anymore //TODO let gunners pick up guns other than the one they dropped
execute as @e[tag=gun] at @s run data modify entity @s Owner set from entity @a[tag=innocent,limit=1,sort=nearest] UUID
execute as @e[tag=gun] at @s run data modify entity @s Thrower set from entity @a[tag=innocent,limit=1,sort=nearest] UUID
execute as @e[type=item,tag=gun] at @s if score @a[limit=1,sort=nearest] canPickupGun matches 1.. run data merge entity @s {PickupDelay:-1s,Age:32768}
execute as @e[type=item,tag=gun] at @s if score @a[limit=1,sort=nearest] canPickupGun matches ..0 run data merge entity @s {PickupDelay:0s,Age:1}

#> Scrap spawning timer
scoreboard players add $scrapclock CmdData 1
execute if score $scrapclock CmdData matches 20.. run function mcm:game/loops/spawnscrap
execute if score $scrapclock CmdData matches 20.. run scoreboard players set $scrapclock CmdData 0

#> If a player has 10 scrap, give gun
execute as @a[tag=innocent,nbt={Inventory:[{id:"minecraft:netherite_scrap",Count:10b}]}] at @s run item replace entity @s hotbar.5 with warped_fungus_on_a_stick{Unbreakable:1,CustomModelData:1111,display:{Name:'[{"text":"Gun","italic":false}]',Lore:['[{"text":"Right click to shoot","italic":false}]']}}

#> Clear scrap from players with a gun
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}] if entity @s[nbt={Inventory:[{id:"minecraft:netherite_scrap"}]}] run clear @s netherite_scrap
execute as @a[tag=murderer,nbt={Inventory:[{id:"minecraft:netherite_scrap"}]}] at @s run clear @s netherite_scrap

#> Turn the knife snowball into an arrow with the knife item as a passenger
execute as @e[type=snowball] at @s run summon arrow ~ ~ ~ {life:1100s,Tags:["knife","MapEntity"],Passengers:[{id:"minecraft:item",PickupDelay:100,Tags:["knifeCosmetic","MapEntity","KeyItem"],Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111,PickupDelay:10}}}]}
execute as @e[tag=knife] at @s run data modify entity @s Motion set from entity @e[type=snowball,limit=1,sort=nearest] Motion
execute as @e[tag=knife] at @s run data modify entity @s Owner set from entity @e[type=snowball,limit=1,sort=nearest] Owner
kill @e[type=snowball]

#> If the knife item isn't in the world, kill the arrow it was riding
execute unless entity @e[tag=knifeCosmetic] run kill @e[tag=knife]

execute as @a[tag=murderer,nbt=!{Inventory:[{id:"minecraft:snowball",Count:1b}]}] if score @s knifeRetrieve matches 0 unless entity @e[tag=knifeCosmetic] run item replace entity @s hotbar.4 with snowball{Unbreakable:1,CustomModelData:1111,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:100,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122419,10812,22346,-21624]}],display:{Name:'[{"text":"Knife","italic":false}]',Lore:['[{"text":"Right click to throw","italic":false}]']}} 1

#> Make sure knife can only be picked up by murderer
execute as @e[tag=knifeCosmetic] at @s run data modify entity @s Owner set from entity @a[tag=murderer,limit=1,sort=nearest] UUID
execute as @e[tag=knifeCosmetic] at @s run data modify entity @s Thrower set from entity @a[tag=murderer,limit=1,sort=nearest] UUID
execute as @e[tag=knifeCosmetic] at @s unless entity @a[tag=murderer,limit=1,sort=nearest] if entity @e[tag=knife,limit=1,sort=nearest,nbt={inGround:1b}] run data merge entity @s {PickupDelay:-1s,Age:32768}
execute as @e[tag=knifeCosmetic] at @s if entity @a[tag=murderer,limit=1,sort=nearest] if entity @e[tag=knife,limit=1,sort=nearest,nbt={inGround:1b}] run data merge entity @s {PickupDelay:0s,Age:1}

#> If the murderer threw the knife and hasn't thrown it before, give them the auto retrieval item
execute as @a[tag=murderer,tag=!retrieved] if entity @s[nbt=!{Inventory:[{id:"minecraft:snowball",Count:1b}]}] if entity @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1111}}]}] if entity @e[tag=knifeCosmetic] run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick{CustomModelData:1111}
#> Have the auto retrieval item do stuff
execute as @a[tag=murderer,tag=retrieved] at @s run scoreboard players set @s knifeRetrieve 0
execute if score @a[tag=murderer,limit=1,sort=nearest] knifeRetrieve matches 1.. run kill @e[tag=knife]
execute if score @a[tag=murderer,limit=1,sort=nearest] knifeRetrieve matches 1.. run kill @e[tag=knifeCosmetic]
execute as @a[tag=murderer,limit=1,sort=nearest] at @s if score @s knifeRetrieve matches 1.. run item replace entity @s hotbar.4 with snowball{Unbreakable:1,CustomModelData:1111,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:100,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122419,10812,22346,-21624]}],display:{Name:'[{"text":"Knife","italic":false}]',Lore:['[{"text":"Right click to throw","italic":false}]']}} 1
execute as @a[tag=murderer,limit=1,sort=nearest] at @s if score @s knifeRetrieve matches 1.. run summon lightning_bolt ~ ~ ~
execute as @a[tag=murderer,limit=1,sort=nearest,nbt={Inventory:[{Slot:0b,id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] at @s run item replace entity @s hotbar.4 with snowball{Unbreakable:1,CustomModelData:1111,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:100,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122419,10812,22346,-21624]}],display:{Name:'[{"text":"Knife","italic":false}]',Lore:['[{"text":"Right click to throw","italic":false}]']}} 1
execute as @a[tag=murderer,limit=1,sort=nearest,nbt={Inventory:[{id:"minecraft:snowball",Count:1b}]}] at @s run clear @s carrot_on_a_stick
execute as @a[tag=murderer,limit=1,sort=nearest,nbt={Inventory:[{Slot:0b,id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] at @s run item replace entity @s hotbar.0 with air
execute as @a[tag=murderer,limit=1,sort=nearest] at @s if score @s knifeRetrieve matches 1.. run tag @s add retrieved
execute as @a[tag=murderer,limit=1,sort=nearest] at @s if score @s knifeRetrieve matches 1.. run scoreboard players set @s knifeRetrieve 0

#> Lazy way of making sure you can't have more than one knife
execute as @a[tag=murderer,limit=1,sort=nearest,nbt={Inventory:[{Slot:1b,id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] at @s run clear @s snowball
execute as @a[tag=murderer,limit=1,sort=nearest,nbt={Inventory:[{Slot:2b,id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] at @s run clear @s snowball
execute as @a[tag=murderer,limit=1,sort=nearest,nbt={Inventory:[{Slot:3b,id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] at @s run clear @s snowball
execute as @a[tag=murderer,limit=1,sort=nearest,nbt={Inventory:[{Slot:5b,id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] at @s run clear @s snowball
execute as @a[tag=murderer,limit=1,sort=nearest,nbt={Inventory:[{Slot:6b,id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] at @s run clear @s snowball
execute as @a[tag=murderer,limit=1,sort=nearest,nbt={Inventory:[{Slot:8b,id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] at @s run clear @s snowball
execute as @a[tag=murderer] at @s run item replace entity @s hotbar.7 with spyglass
execute as @a[tag=innocent] at @s run item replace entity @s hotbar.7 with spyglass

#> Win conditions
# Murderer victory
execute if score $graceperiod CmdData matches ..0 if score $deadInnocents CmdData = $innocents CmdData run tellraw @a ["", "\n", {"text":"The Murderer has won!","color":"red"}, "\n"]
execute if score $graceperiod CmdData matches ..0 if score $deadInnocents CmdData = $innocents CmdData run scoreboard players set $gamestate CmdData 2

# Innocents victory
execute if score $graceperiod CmdData matches ..0 if entity @a[tag=murderer,scores={dead=1..}] run tellraw @a ["", "\n", {"text":"The Innocents have won!","color":"green"}, "\n"]
execute if score $graceperiod CmdData matches ..0 if entity @a[tag=murderer,scores={dead=1..}] run scoreboard players set $gamestate CmdData 2

execute if score $graceperiod CmdData matches ..0 unless entity @a[tag=murderer] run tellraw @a ["", "\n", {"text":"The Innocents have won!","color":"green"}, "\n"]
execute if score $graceperiod CmdData matches ..0 unless entity @a[tag=murderer] run scoreboard players set $gamestate CmdData 2

#> Make sure murderer can't drop their knife
#kill @e[type=item,nbt={"Item":{id:"minecraft:netherite_sword",Count:1b}}]
#execute as @a[tag=murderer,nbt=!{Inventory:[{id:"minecraft:netherite_sword",Count:1b}]}] at @s run item replace entity @s {Unbreakable:1,CustomModelData:1111,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:100,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122419,10812,22346,-21624]}],display:{Name:'[{"text":"Knife","italic":false}]',Lore:['[{"text":"Right click to throw","italic":false}]']}}