# Arguments:
#   data: How to set the data fields of the interaction entity
#   fn: Function to run when clicked

$execute summon interaction run function mcm:util/interactable/summon {data:"$(data)"}
execute summon marker run ride @s mount @e[type=interaction,tag=new,limit=1]
$execute as @e[type=interaction,tag=new] on passengers run data modify entity @s data merge value {fn:"$(fn)"}
tag @e[type=interaction,tag=new] remove new
