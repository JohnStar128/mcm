
#> Get innocents
execute store result score $InnocentCount CmdData if entity @a[tag=innocent,tag=!spectating]
#> Get murderers
execute store result score $MurdererCount CmdData if entity @a[tag=murderer,tag=!spectating]


#> calculate remaining minutes and seconds
scoreboard players set $20 CmdData 20
scoreboard players set $60 CmdData 60
#Minutes
scoreboard players operation $gameminutes CmdData = $gametimer CmdData
scoreboard players operation $gameminutes CmdData /= $20 CmdData
scoreboard players operation $gameminutes CmdData /= $60 CmdData
#Seconds
scoreboard players operation $gameseconds CmdData = $gametimer CmdData
scoreboard players operation $gameseconds CmdData /= $20 CmdData
scoreboard players operation $gameseconds CmdData %= $60 CmdData

bossbar set gamedisplay players @a
execute store result bossbar gamedisplay value run scoreboard players get $gametimer CmdData



#> Update name

execute if score $gameminutes CmdData matches 10.. if score $gameseconds CmdData matches 10.. run bossbar set gamedisplay name {"translate":"mcm.game.bossbar", "color":"#253b48", "with":[ {"translate":"mcm.game.bossbar.murderers","color":"#ff5f79", "with": [{"score":{"name":"$MurdererCount","objective":"CmdData"},"color":"white"}] }, {"translate":"mcm.time.minsec","color":"#ffcf66", "with":[ {"score":{"name":"$gameminutes","objective":"CmdData"}}, {"score":{"name":"$gameseconds","objective":"CmdData"}} ] }, {"translate":"mcm.game.bossbar.innocents","color":"#6dc6ff", "with":[ {"score":{"name":"$InnocentCount","objective":"CmdData"},"color":"white"} ]} ]}
execute if score $gameminutes CmdData matches ..9 if score $gameseconds CmdData matches 10.. run bossbar set gamedisplay name {"translate":"mcm.game.bossbar","color":"#253b48","with":[{"translate":"mcm.game.bossbar.murderers","color":"#ff5f79","with":[{"score":{"name":"$MurdererCount","objective":"CmdData"},"color":"white"}]},{"translate":"mcm.time.minsec","color":"#ffcf66","with":[{"translate":"mcm.time.leading.0","with":[{"score":{"name":"$gameminutes","objective":"CmdData"}}]},{"score":{"name":"$gameseconds","objective":"CmdData"}}]},{"translate":"mcm.game.bossbar.innocents","color":"#6dc6ff","with":[{"score":{"name":"$InnocentCount","objective":"CmdData"},"color":"white"}]}]}
execute if score $gameminutes CmdData matches 10.. if score $gameseconds CmdData matches ..9 run bossbar set gamedisplay name {"translate":"mcm.game.bossbar","color":"#253b48","with":[{"translate":"mcm.game.bossbar.murderers","color":"#ff5f79","with":[{"score":{"name":"$MurdererCount","objective":"CmdData"},"color":"white"}]},{"translate":"mcm.time.minsec","color":"#ffcf66","with":[{"score":{"name":"$gameminutes","objective":"CmdData"}},{"translate":"mcm.time.leading.0","with":[{"score":{"name":"$gameseconds","objective":"CmdData"}}]},{"score":{"name":"$gameseconds","objective":"CmdData"}}]},{"translate":"mcm.game.bossbar.innocents","color":"#6dc6ff","with":[{"score":{"name":"$InnocentCount","objective":"CmdData"},"color":"white"}]}]}
execute if score $gameminutes CmdData matches ..9 if score $gameseconds CmdData matches ..9 run bossbar set gamedisplay name {"translate":"mcm.game.bossbar","color":"#253b48","with":[{"translate":"mcm.game.bossbar.murderers","color":"#ff5f79","with":[{"score":{"name":"$MurdererCount","objective":"CmdData"},"color":"white"}]},{"translate":"mcm.time.minsec","color":"#ffcf66","with":[{"translate":"mcm.time.leading.0","with":[{"score":{"name":"$gameminutes","objective":"CmdData"}}]},{"translate":"mcm.time.leading.0","with":[{"score":{"name":"$gameseconds","objective":"CmdData"}}]},{"score":{"name":"$gameseconds","objective":"CmdData"}}]},{"translate":"mcm.game.bossbar.innocents","color":"#6dc6ff","with":[{"score":{"name":"$InnocentCount","objective":"CmdData"},"color":"white"}]}]}
