clear @s
function mcm:cosmetics/change_cosmetics
item replace entity @s[tag=WonLast] hotbar.0 with warped_fungus_on_a_stick{NoDrop:1b,CustomModelData:1114,display:{Name:'[{"translate":"mcm.item.popcorn","italic":false,"color":"yellow"}]',Lore:['[{"text":"","italic":false}]','[{"translate":"mcm.item.popcorn.lore","italic":true,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]']},HideFlags:3,HideFlags:3}
item replace entity @s[tag=autoqueue] hotbar.8 with warped_fungus_on_a_stick{CustomModelData:1235,NoDrop:1b,Autoqueue:1b,display:{Name:'[{"translate":"mcm.item.autoqueue.disable","italic":false,"color":"red"}]'}}
item replace entity @s[tag=!autoqueue] hotbar.8 with warped_fungus_on_a_stick{CustomModelData:1234,NoDrop:1b,Autoqueue:1b,display:{Name:'[{"translate":"mcm.item.autoqueue.enable","italic":false,"color":"green"}]'}}
item replace entity @s hotbar.4 with written_book{HowToPlay:1b,NoDrop:1b}

#> Only get a spyglass when a game is running
execute if score $gamestate CmdData matches 1 run item replace entity @s hotbar.7 with spyglass{Spectate:1b,NoDrop:1b,display:{Name:'{"translate":"mcm.item.spectate","color":"blue","italic":false}'}}