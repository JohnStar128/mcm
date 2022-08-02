execute if score $selectedMap CmdData matches 1 run function mcm:maps/library/tptospawn 
execute if score $selectedMap CmdData matches 1 run function mcm:maps/library/tptoflipspawn 
execute if score $selectedMap CmdData matches 2 run function mcm:maps/airship/tptospawn 
execute if score $selectedMap CmdData matches 3 run function mcm:maps/vineyard/tptospawn
execute if score $selectedMap CmdData matches 4 run function mcm:maps/launchpad/tptospawn
playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 1 1 1
playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 1 2 1 
effect clear @s levitation