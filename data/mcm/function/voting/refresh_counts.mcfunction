
$execute store result score $$(name) vote_totals if entity @a[scores={map_vote=$(slot)}]

$execute as @e[type=text_display, tag=vote_text_display, sort=nearest, limit=1] run data merge entity @s {text:{translate:"mcm.lobby.vote",with:[{score:{objective:"vote_totals",name:"$$(name)"},color:"#FFE700"}]}}
