
#> Runs the map reset function to keep all the map stuff in one place
execute if score $selectedMap CmdData matches 1 run function mcm:maps/library/reset
execute if score $selectedMap CmdData matches 2 run function mcm:maps/airship/reset
execute if score $selectedMap CmdData matches 3 run function mcm:maps/vineyard/reset
execute if score $selectedMap CmdData matches 4 run function mcm:maps/launchpad/reset
execute if score $selectedMap CmdData matches 5 run function mcm:maps/cyberpunk/reset
#gumdrop - execute if score $gameEndTimer CmdData matches ..1 if score $selectedMap CmdData matches 6 run function mcm:maps/gumdrop/reset
execute if score $selectedMap CmdData matches 6 run function mcm:maps/riverboat/reset
execute if score $selectedMap CmdData matches 7 run function mcm:maps/industry/reset
execute if score $selectedMap CmdData matches 8 run function mcm:maps/train/reset
execute if score $selectedMap CmdData matches 9 run function mcm:maps/cabin/reset