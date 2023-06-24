#> Queue when sitting in a chair
scoreboard players add $queued CmdData 1


tellraw @a {"translate":"mcm.lobby.queued", "with":[ {"selector":"@s","color":"green"}, {"translate":"mcm.lobby.queued.brackets","color":"yellow", "with":[{"translate":"mcm.lobby.queued.ratio","color":"dark_green","with":[{"score":{"name":"$queued","objective":"CmdData"},"color":"green"},{"score":{"name":"$maxplayers","objective":"GameRules"},"color":"green"}]}]} ]}


item replace entity @s armor.head with diamond_hoe{CustomModelData:69,display:{Name:'{"translate":"mcm.lobby.queued.glasses","italics":false,"with":[{"translate":"mcm.lobby.queued.glasses.3","italic":false,"bold":true,"color":"red"},{"translate":"mcm.lobby.queued.glasses.d","italics":false,"color":"blue"}]}',Lore:['[{"translate":"mcm.lobby.queued.glasses.lore.1","italic":false,"color":"green","underlined":true},{"text":"","italic":false,"color":"dark_purple","underlined":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"translate":"mcm.lobby.queued.glasses.lore.2","italic":true,"color":"dark_gray"}]','[{"translate":"mcm.lobby.queued.glasses.lore.3","italic":true,"color":"dark_gray"}]','[{"translate":"mcm.lobby.queued.glasses.lore.4","italic":true,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:127}
tag @s add queued
scoreboard players set @s deferred_queue 0

