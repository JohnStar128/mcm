
$scoreboard players set @a[advancements={mcm:util/interact=true}] map_vote $(slot)
execute as @a[advancements={mcm:util/interact=true}] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.4
$tellraw @a[advancements={mcm:util/interact=true}] [{text:"| ",color:"gray",bold:true}, {translate:"mcm.lobby.voted.for",color:"gray", with: [{translate:"mcm.$(name).name", color:"green"}]}]
execute as @e[type=interaction, tag=vote_interaction] on passengers at @s run function mcm:voting/refresh_counts with entity @s data
