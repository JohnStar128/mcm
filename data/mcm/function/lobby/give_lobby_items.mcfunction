clear @s
function mcm:cosmetics/change_cosmetics
item replace entity @s[tag=WonLast] hotbar.0 with warped_fungus_on_a_stick[custom_data={NoDrop:1b},custom_model_data=1114,custom_name='[{"translate":"mcm.item.popcorn","italic":false,"color":"yellow"}]',lore=['[{"text":"","italic":false}]','[{"translate":"mcm.item.popcorn.lore","italic":true,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]']]
item replace entity @s[tag=autoqueue] hotbar.8 with warped_fungus_on_a_stick[custom_data={NoDrop:1b,Autoqueue:1b},custom_model_data=1235,custom_name='[{"translate":"mcm.item.autoqueue.disable","italic":false,"color":"red"}]']
item replace entity @s[tag=!autoqueue] hotbar.8 with warped_fungus_on_a_stick[custom_data={NoDrop:1b,Autoqueue:1b},custom_model_data=1234,custom_name='[{"translate":"mcm.item.autoqueue.enable","italic":false,"color":"green"}]']
item replace entity @s hotbar.4 with written_book[custom_data={HowToPlay:1b,NoDrop:1b}]
item modify entity @s hotbar.4 mcm:refresh_book

#> Only get a spyglass when a game is running
execute if score $gamestate CmdData matches 1 if score $graceperiod CmdData matches 1.. run item replace entity @s hotbar.7 with spyglass[custom_data={Spectate:1b,NoDrop:1b},custom_name='{"translate":"mcm.item.latejoin","color":"blue","italic":false}']
execute if score $gamestate CmdData matches 1 unless score $graceperiod CmdData matches 1.. run item replace entity @s hotbar.7 with spyglass[custom_data={Spectate:1b,NoDrop:1b},custom_name='{"translate":"mcm.item.spectate","color":"blue","italic":false}']
