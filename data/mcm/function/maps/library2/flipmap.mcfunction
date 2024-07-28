#> Timer
scoreboard players add $fliptimer CmdData 1

scoreboard players set $flipbook CmdData 0

#> Teleport people
execute if score $fliptimer CmdData matches 156 as @a at @s run function mcm:maps/library2/flip_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=MapEntity] at @s run function mcm:maps/library2/flip_entity


execute if score $fliptimer CmdData matches 156 as @a[tag=queued,advancements={mcm:secrets/library/library=false}] run scoreboard players set $event_type temp 1
execute if score $fliptimer CmdData matches 156 as @a[tag=queued,advancements={mcm:secrets/library/library=false}] run function mcm:game/summary/add_event {translate:"mcm.game.events.library_flip_secret", color:"green"}
execute if score $fliptimer CmdData matches 156 run advancement grant @a[tag=queued,advancements={mcm:secrets/library/library=false}] only mcm:secrets/library/library

execute if score $fliptimer CmdData matches 156 run scoreboard players set $flippingmap CmdData 0
execute if score $fliptimer CmdData matches 156 run scoreboard players set $flipbook CmdData 0
execute if score $fliptimer CmdData matches 156 run scoreboard players reset @a flipmap
execute if score $fliptimer CmdData matches 156 run scoreboard players set $library_flip CmdData 1
execute if score $fliptimer CmdData matches 156 run scoreboard players set $fliptimer CmdData 0

#> Sound markers
#execute if score $fliptimer CmdData matches 156 positioned 1047 156 980 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1066 173 1003 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1036 173 1010 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1045 132 1011 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1065 130 1021 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1048 162 1014 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1042 139 986 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1040 172 981 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1056 151 1018 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1079 128 977 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1043 132 985 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1064 172 986 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1018 165 1000 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1046 173 992 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1074 149 1005 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1080 155 993 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1041 162 988 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1052 173 1013 run function mcm:game/markers/soundmarker
#execute if score $fliptimer CmdData matches 156 positioned 1056 141 1024 run function mcm:game/markers/soundmarker
