#> Give the murderer their retrieval ability back if they have 10 scrap
execute as @s[tag=murderer] run tag @s remove retrieved
execute as @s[tag=murderer] run scoreboard players set @s throwKnife 1
execute as @s[tag=murderer] run clear @s netherite_scrap{CustomModelData:1} 10

#> If a player has 10 scrap, give gun
execute as @s[tag=innocent] at @s run item replace entity @s hotbar.1 with warped_fungus_on_a_stick{NoDrop:1b,Unbreakable:1,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.gun","italic":false}]',Lore:['[{"translate":"mcm.item.gun.lore","italic":false}]']}}

advancement revoke @s only mcm:item_counts/scrap