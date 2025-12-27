
execute store result score $count vars if entity @e[type=interaction, tag=vote_interaction]

$execute positioned $(pos) run summon item_display ~0.99 ~0.5 ~-0.5 {item:{id:paper, components:{item_model:"$(model)"}}, item_display:fixed, transformation:[2f,0f,0f,0f, 0f,2f,0f,0f, 0f,0f,2f,0f, 0f,0f,0f,1f], Tags:["vote_display","new"], Rotation:[90.0f,0.0f], brightness:{block:15,sky:15}}
execute as @e[type=item_display, tag=new] at @s run tp @s ~-0.51 ~0.5 ~0.5 
tag @e[type=item_display, tag=new] remove new

$execute positioned $(pos) run function mcm:util/interactable/new {data:"height:3f, width:2f, response:1b, Tags:['vote_interaction', 'set_data']", fn:"mcm:voting/player_vote with entity @s data"}
$execute as @e[type=interaction, tag=set_data] on passengers run data merge entity @s {data:{name:"$(name)"}}
execute as @e[type=interaction, tag=set_data] on passengers store result entity @s data.slot int 1 run scoreboard players get $count vars
$execute as @e[type=interaction, tag=set_data] on passengers store result entity @s data.map_idx int 1 run data get entity @e[type=marker, tag=map_vote, tag=$(name), limit=1] data.map_idx
tag @e[type=interaction, tag=set_data] remove set_data
scoreboard players reset $count vars

$summon text_display $(pos) {billboard:"center", Tags:["vote_text_display","new"], alignment:"center", background:0}
execute as @e[type=text_display, tag=new] at @s run tp @s ~-1.25 ~3.2 ~
$execute as @e[type=text_display, tag=new] run data merge entity @s {text:{translate:"mcm.lobby.vote",with:[{score:{objective:"vote_totals",name:"$$(name)"},color:"#FFE700"}]}}
tag @e[type=text_display, tag=new] remove new
