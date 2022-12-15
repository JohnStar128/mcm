#> If this player is a murderer, see which abilities they've used.
scoreboard players set $temp math 0
execute if entity @s[tag=murderer,tag=retrieved] run scoreboard players add $temp math 4
execute if entity @s[tag=murderer,tag=usedTeleport] run scoreboard players add $temp math 2
execute if entity @s[tag=murderer,tag=usedAdrenaline] run scoreboard players add $temp math 1

#> Give the murderer their retrieval ability back if they have 10 scrap
execute if score $temp math >= $four math run tag @s remove retrieved
execute if score $temp math >= $four math run scoreboard players set @s throwKnife 1
execute if score $temp math >= $four math run scoreboard players remove $temp math 7
#> If they hadn't used it, give them their first ability
execute if score $temp math >= $two math run tag @s remove usedTeleport
execute if score $temp math >= $two math run give @s carrot_on_a_stick{NoDrop:1b,CustomModelData:1112,display:{Name:'[{"translate":"mcm.item.teleporter","italic":false}]',Lore:['[{"translate":"mcm.item.teleporter.lore","italic":false}]']}}
execute if score $temp math >= $two math run scoreboard players remove $temp math 3
#> If they hadn't used that, give them their second ability
execute if score $temp math >= $one math run tag @s remove usedAdrenaline
execute if score $temp math >= $one math run give @s carrot_on_a_stick{NoDrop:1b,CustomModelData:1113,display:{Name:'[{"translate":"mcm.item.adrenaline","italic":false}]',Lore:['[{"translate":"mcm.item.adrenaline.lore","italic":false}]']}}
scoreboard players remove $temp math 0
#> Otherwise, do nothing but steal the scrap
execute as @s[tag=murderer] run clear @s netherite_scrap{CustomModelData:1} 10

#> If a player has 10 scrap, give gun
execute as @s[tag=innocent] at @s run item replace entity @s hotbar.1 with warped_fungus_on_a_stick{NoDrop:1b,Unbreakable:1,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.gun","italic":false}]',Lore:['[{"translate":"mcm.item.gun.lore","italic":false}]']}}

advancement revoke @s only mcm:item_counts/scrap