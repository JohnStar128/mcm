#> Set murderer, gunner and innocent roles
# Murderer
execute as @a[tag=!prevMurderer,tag=!murderer,sort=random,limit=1] at @s run tag @s add murderer
tellraw @a[tag=murderer] {"text":"You are ","color":"gold","extra":[{"text":"the murderer!","color":"red"}]}
function mcm:kits/murderer

# Innocent
execute as @a[tag=!murderer] at @s run tag @s add innocent
tellraw @a[tag=innocent] {"text":"You are ","color":"gold","extra":[{"text":"innocent!","color":"light_purple"}]}
function mcm:kits/innocent

# Gunner
execute as @a[tag=innocent,limit=1,sort=random] run give @p crossbow{Unbreakable:1,display:{Name:'[{"text":"Gun","italic":false}]',Lore:['[{"text":"temporary test item","italic":false}]']},Enchantments:[{id:quick_charge,lvl:5}]} 1
execute as @a[tag=innocent,nbt={Inventory:[{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'[{"text":"Gun","italic":"false"}]'}}}]}] at @s run tellraw @a ["","\n",{"text":"You are ","color":"gold"},{"text":"the gunner","color":"dark_aqua"}]

#> Teleport players to spawnpoints within the map
execute as @a at @s run function mcm:maps/library/tptospawn

#> Start 5 minute clock
scoreboard players set $gametimer CmdData 6000

#> Set gamestate to playing ($gamestate CmdData=1)
scoreboard players set $gamestate CmdData 1