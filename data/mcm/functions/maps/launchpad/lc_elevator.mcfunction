#>LC elevator functions

#>Launch Control Center elevator (LCC)
#place template mcm:lc_elevator_up -1092 43 -1118 none none
#place template mcm:lc_elevator_mid -1092 43 -1118 none none
#place template mcm:lc_elevator_down -1092 43 -1118 none none

#Summon platform to top level if player is there
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_top,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_bottom] at @s if score $lc_elevator_lcc_top CmdData matches ..9 unless block -1090 50 -1116 minecraft:iron_trapdoor run scoreboard players add $lc_elevator_lcc_top CmdData 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_top,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_bottom] at @s if score $lc_elevator_lcc_top CmdData matches 1 run place template mcm:lc_elevator_mid -1092 43 -1118 none none
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_top,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_bottom] at @s if score $lc_elevator_lcc_top CmdData matches 10 run place template mcm:lc_elevator_up -1092 43 -1118 none none
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_top,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_bottom] at @s if score $lc_elevator_lcc_top CmdData matches 10 run playsound minecraft:block.piston.extend block @a[distance=..10] -1090 50 -1116 1 1 1
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_top,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_bottom] at @s if score $lc_elevator_lcc_top CmdData matches 10 run playsound minecraft:block.chain.break block @a[distance=..10] -1090 50 -1116 1 1 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_top,limit=1] at @s if score $lc_elevator_lcc_top CmdData matches 10 if block -1090 50 -1116 minecraft:iron_trapdoor run scoreboard players set $lc_elevator_lcc_top CmdData 0

#Summon platform to bottom level if player is there
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_bottom,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside] at @s if score $lc_elevator_lcc_bottom CmdData matches ..9 unless block -1090 43 -1116 minecraft:iron_trapdoor run scoreboard players add $lc_elevator_lcc_bottom CmdData 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_bottom,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside] at @s if score $lc_elevator_lcc_bottom CmdData matches 1 run place template mcm:lc_elevator_mid -1092 43 -1118 none none
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_bottom,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside] at @s if score $lc_elevator_lcc_bottom CmdData matches 10 run place template mcm:lc_elevator_down -1092 43 -1118 none none
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_bottom,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside] at @s if score $lc_elevator_lcc_bottom CmdData matches 10 run playsound minecraft:block.piston.extend block @a[distance=..10] -1090 43 -1116 1 1 1
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_bottom,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside] at @s if score $lc_elevator_lcc_bottom CmdData matches 10 run playsound minecraft:block.chain.break block @a[distance=..10] -1090 43 -1116 1 1 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_bottom,limit=1] at @s if score $lc_elevator_lcc_bottom CmdData matches 10 if block -1090 43 -1116 minecraft:iron_trapdoor run scoreboard players set $lc_elevator_lcc_bottom CmdData 0

#############
#Going Down
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if block -1092 51 -1115 minecraft:polished_blackstone_button[powered=true] unless block -1091 43 -1117 minecraft:iron_trapdoor run scoreboard players set $lc_elevator_lcc_goingdown CmdData 1
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if block -1092 51 -1115 minecraft:polished_blackstone_button[powered=true] run setblock -1092 51 -1115 minecraft:polished_blackstone_button[facing=east,face=wall]
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if score $lc_elevator_lcc_goingdown CmdData matches 1 run scoreboard players add $lc_elevator_lcc_goingdown_timer CmdData 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside] if score $lc_elevator_lcc_goingdown_timer CmdData matches 1 run tp @s -1090.5 47.5 -1116.5
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if score $lc_elevator_lcc_goingdown_timer CmdData matches 1 run place template mcm:lc_elevator_mid -1092 43 -1118 none none
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if score $lc_elevator_lcc_goingdown_timer CmdData matches 1 run playsound minecraft:block.piston.extend block @a[distance=..10] -1090 43 -1116 1 1 1
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if score $lc_elevator_lcc_goingdown_timer CmdData matches 1 run playsound minecraft:block.chain.break block @a[distance=..10] -1090 43 -1116 1 1 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside] if score $lc_elevator_lcc_goingdown_timer CmdData matches 10 run tp @s -1090.5 43.5 -1116.5
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if score $lc_elevator_lcc_goingdown_timer CmdData matches 10 run place template mcm:lc_elevator_down -1092 43 -1118 none none
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if score $lc_elevator_lcc_goingdown_timer CmdData matches 10 run playsound minecraft:block.piston.extend block @a[distance=..10] -1090 43 -1116 1 1 1
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if score $lc_elevator_lcc_goingdown_timer CmdData matches 10 run playsound minecraft:block.chain.break block @a[distance=..10] -1090 43 -1116 1 1 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if block -1091 43 -1117 minecraft:iron_trapdoor run scoreboard players set $lc_elevator_lcc_goingdown CmdData 0
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if score $lc_elevator_lcc_goingdown_timer CmdData matches 10.. if block -1091 43 -1117 minecraft:iron_trapdoor if score $lc_elevator_lcc_goingdown CmdData matches 0 run scoreboard players set $lc_elevator_lcc_goingdown_timer CmdData 0


#Going up
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if block -1089 44 -1116 minecraft:polished_blackstone_button[powered=true] unless block -1091 50 -1117 minecraft:iron_trapdoor run scoreboard players set $lc_elevator_lcc_goingup CmdData 1
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if block -1089 44 -1116 minecraft:polished_blackstone_button[powered=true] run setblock -1089 44 -1116 minecraft:polished_blackstone_button[facing=north,face=wall]
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if score $lc_elevator_lcc_goingup CmdData matches 1 run scoreboard players add $lc_elevator_lcc_goingup_timer CmdData 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside] if score $lc_elevator_lcc_goingup_timer CmdData matches 1 run tp @s -1090.5 47.5 -1116.5
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if score $lc_elevator_lcc_goingup_timer CmdData matches 1 run place template mcm:lc_elevator_mid -1092 43 -1118 none none
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if score $lc_elevator_lcc_goingup_timer CmdData matches 1 run playsound minecraft:block.piston.extend block @a[distance=..10] -1090 43 -1116 1 1 1
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if score $lc_elevator_lcc_goingup_timer CmdData matches 1 run playsound minecraft:block.chain.break block @a[distance=..10] -1090 43 -1116 1 1 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside] if score $lc_elevator_lcc_goingup_timer CmdData matches 10 run tp @s -1090.5 50.5 -1116.5
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if score $lc_elevator_lcc_goingup_timer CmdData matches 10 run place template mcm:lc_elevator_up -1092 43 -1118 none none
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if score $lc_elevator_lcc_goingup_timer CmdData matches 10 run playsound minecraft:block.piston.extend block @a[distance=..10] -1090 43 -1116 1 1 1
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if score $lc_elevator_lcc_goingup_timer CmdData matches 10 run playsound minecraft:block.chain.break block @a[distance=..10] -1090 43 -1116 1 1 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if block -1091 50 -1117 minecraft:iron_trapdoor run scoreboard players set $lc_elevator_lcc_goingup CmdData 0
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_lcc_inside,limit=1] if score $lc_elevator_lcc_goingup_timer CmdData matches 10.. if block -1091 50 -1117 minecraft:iron_trapdoor if score $lc_elevator_lcc_goingup CmdData matches 0 run scoreboard players set $lc_elevator_lcc_goingup_timer CmdData 0



#>Below stairwell elevator (SW)
#place template mcm:lc_elevator_up -1081 43 -1143 clockwise_90 none
#place template mcm:lc_elevator_mid -1081 43 -1143 clockwise_90 none
#place template mcm:lc_elevator_down -1081 43 -1143 clockwise_90 none

#Summon platform to top level if player is there
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_top,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_bottom] at @s if score $lc_elevator_sw_top CmdData matches ..9 unless block -1082 50 -1142 minecraft:iron_trapdoor run scoreboard players add $lc_elevator_sw_top CmdData 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_top,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_bottom] at @s if score $lc_elevator_sw_top CmdData matches 1 run place template mcm:lc_elevator_mid -1081 43 -1143 clockwise_90 none
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_top,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_bottom] at @s if score $lc_elevator_sw_top CmdData matches 10 run place template mcm:lc_elevator_up -1081 43 -1143 clockwise_90 none
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_top,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_bottom] at @s if score $lc_elevator_sw_top CmdData matches 10 run playsound minecraft:block.piston.extend block @a[distance=..10] -1082 50 -1142 1 1 1
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_top,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_bottom] at @s if score $lc_elevator_sw_top CmdData matches 10 run playsound minecraft:block.chain.break block @a[distance=..10] -1082 50 -1142 1 1 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_top,limit=1] at @s if score $lc_elevator_sw_top CmdData matches 10 if block -1082 50 -1142 minecraft:iron_trapdoor run scoreboard players set $lc_elevator_sw_top CmdData 0

#Summon platform to bottom level if player is there
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_bottom,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside] at @s if score $lc_elevator_sw_bottom CmdData matches ..9 unless block -1082 43 -1142 minecraft:iron_trapdoor run scoreboard players add $lc_elevator_sw_bottom CmdData 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_bottom,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside] at @s if score $lc_elevator_sw_bottom CmdData matches 1 run place template mcm:lc_elevator_mid -1081 43 -1143 clockwise_90 none
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_bottom,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside] at @s if score $lc_elevator_sw_bottom CmdData matches 10 run place template mcm:lc_elevator_down -1081 43 -1143 clockwise_90 none
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_bottom,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside] at @s if score $lc_elevator_sw_bottom CmdData matches 10 run playsound minecraft:block.piston.extend block @a[distance=..10] -1082 43 -1142 1 1 1
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_bottom,limit=1] unless entity @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside] at @s if score $lc_elevator_sw_bottom CmdData matches 10 run playsound minecraft:block.chain.break block @a[distance=..10] -1082 43 -1142 1 1 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_bottom,limit=1] at @s if score $lc_elevator_sw_bottom CmdData matches 10 if block -1082 43 -1142 minecraft:iron_trapdoor run scoreboard players set $lc_elevator_sw_bottom CmdData 0

#############
#Going Down
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if block -1083 51 -1140 minecraft:polished_blackstone_button[powered=true] unless block -1082 43 -1142 minecraft:iron_trapdoor run scoreboard players set $lc_elevator_sw_goingdown CmdData 1
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if block -1083 51 -1140 minecraft:polished_blackstone_button[powered=true] run setblock -1083 51 -1140 minecraft:polished_blackstone_button[facing=east,face=wall]
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if score $lc_elevator_sw_goingdown CmdData matches 1 run scoreboard players add $lc_elevator_sw_goingdown_timer CmdData 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside] if score $lc_elevator_sw_goingdown_timer CmdData matches 1 run tp @s -1081.5 47.5 -1141.5
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if score $lc_elevator_sw_goingdown_timer CmdData matches 1 run place template mcm:lc_elevator_mid -1081 43 -1143 clockwise_90 none
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if score $lc_elevator_sw_goingdown_timer CmdData matches 1 run playsound minecraft:block.piston.extend block @a[distance=..10] -1082 47 -1142 1 1 1
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if score $lc_elevator_sw_goingdown_timer CmdData matches 1 run playsound minecraft:block.chain.break block @a[distance=..10] -1082 47 -1142 1 1 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside] if score $lc_elevator_sw_goingdown_timer CmdData matches 10 run tp @s -1081.5 43.5 -1141.5
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if score $lc_elevator_sw_goingdown_timer CmdData matches 10 run place template mcm:lc_elevator_down -1081 43 -1143 clockwise_90 none
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if score $lc_elevator_sw_goingdown_timer CmdData matches 10 run playsound minecraft:block.piston.extend block @a[distance=..10] -1082 43 -1142 1 1 1
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if score $lc_elevator_sw_goingdown_timer CmdData matches 10 run playsound minecraft:block.chain.break block @a[distance=..10] -1082 43 -1142 1 1 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if block -1082 43 -1142 minecraft:iron_trapdoor run scoreboard players set $lc_elevator_sw_goingdown CmdData 0
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if score $lc_elevator_sw_goingdown_timer CmdData matches 10.. if block -1082 43 -1142 minecraft:iron_trapdoor if score $lc_elevator_sw_goingdown CmdData matches 0 run scoreboard players set $lc_elevator_sw_goingdown_timer CmdData 0


#Going up
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if block -1083 44 -1140 minecraft:polished_blackstone_button[powered=true] unless block -1082 50 -1142 minecraft:iron_trapdoor run scoreboard players set $lc_elevator_sw_goingup CmdData 1
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if block -1083 44 -1140 minecraft:polished_blackstone_button[powered=true] run setblock -1083 44 -1140 minecraft:polished_blackstone_button[facing=east,face=wall]
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if score $lc_elevator_sw_goingup CmdData matches 1 run scoreboard players add $lc_elevator_sw_goingup_timer CmdData 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside] if score $lc_elevator_sw_goingup_timer CmdData matches 1 run tp @s -1081.5 47.5 -1141.5
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if score $lc_elevator_sw_goingup_timer CmdData matches 1 run place template mcm:lc_elevator_mid -1081 43 -1143 clockwise_90 none
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if score $lc_elevator_sw_goingup_timer CmdData matches 1 run playsound minecraft:block.piston.extend block @a[distance=..10] -1082 47 -1142 1 1 1
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if score $lc_elevator_sw_goingup_timer CmdData matches 1 run playsound minecraft:block.chain.break block @a[distance=..10] -1082 47 -1142 1 1 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside] if score $lc_elevator_sw_goingup_timer CmdData matches 10 run tp @s -1081.5 50.5 -1141.5
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if score $lc_elevator_sw_goingup_timer CmdData matches 10 run place template mcm:lc_elevator_up -1081 43 -1143 clockwise_90 none
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if score $lc_elevator_sw_goingup_timer CmdData matches 10 run playsound minecraft:block.piston.extend block @a[distance=..10] -1082 50 -1142 1 1 1
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if score $lc_elevator_sw_goingup_timer CmdData matches 10 run playsound minecraft:block.chain.break block @a[distance=..10] -1082 50 -1142 1 1 1

execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if block -1082 50 -1142 minecraft:iron_trapdoor run scoreboard players set $lc_elevator_sw_goingup CmdData 0
execute as @a[predicate=mcm:bounding_boxes/launchpad/lc_elevator_sw_inside,limit=1] if score $lc_elevator_sw_goingup_timer CmdData matches 10.. if block -1082 50 -1142 minecraft:iron_trapdoor if score $lc_elevator_sw_goingup CmdData matches 0 run scoreboard players set $lc_elevator_sw_goingup_timer CmdData 0