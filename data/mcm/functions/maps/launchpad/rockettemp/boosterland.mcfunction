# $launchTime is still gonna be increasing from the launchrocket function

execute if score $launchTime CmdData matches 340 run place template minecraft:landingboostertop -1021 126 -927
execute if score $launchTime CmdData matches 340 run place template minecraft:landingboosterbottom -1021 79 -927
execute if score $launchTime CmdData matches 340..359 run particle minecraft:lava -1016 76 -922 1 2 1 1 200 force

execute if score $launchTime CmdData matches 360 run fill -1026 151 -932 -1006 160 -912 air
execute if score $launchTime CmdData matches 360 run place template minecraft:landingboostertop -1021 116 -927
execute if score $launchTime CmdData matches 360 run place template minecraft:landingboosterbottom -1021 69 -927
execute if score $launchTime CmdData matches 360..379 run particle minecraft:lava -1016 66 -922 1 2 1 1 200 force

execute if score $launchTime CmdData matches 380 run fill -1026 146 -932 -1006 160 -912 air
execute if score $launchTime CmdData matches 380 run place template minecraft:landingboostertop -1021 111 -927
execute if score $launchTime CmdData matches 380 run place template minecraft:landingboosterbottom -1021 64 -927
execute if score $launchTime CmdData matches 380..399 run particle minecraft:lava -1016 61 -922 1 2 1 1 200 force

execute if score $launchTime CmdData matches 400 run fill -1026 141 -932 -1006 160 -912 air
execute if score $launchTime CmdData matches 400 run place template minecraft:landingboostertop -1021 106 -927
execute if score $launchTime CmdData matches 400 run place template minecraft:landingboosterbottom -1021 59 -927
execute if score $launchTime CmdData matches 400..419 run particle minecraft:lava -1016 56 -922 1 2 1 1 200 force

execute if score $launchTime CmdData matches 420 run fill -1026 136 -932 -1006 160 -912 air
execute if score $launchTime CmdData matches 420 run place template minecraft:landedboostertop -1026 101 -932
execute if score $launchTime CmdData matches 420 run place template minecraft:landedboosterbottom -1026 54 -932
execute if score $launchTime CmdData matches 420..439 run particle minecraft:lava -1016 51 -922 1 2 1 1 200 force

execute if score $launchTime CmdData matches 440 run fill -1026 131 -932 -1006 160 -912 air
execute if score $launchTime CmdData matches 440 run place template minecraft:landedboostertop -1026 97 -932
execute if score $launchTime CmdData matches 440 run place template minecraft:landedboosterbottom -1026 49 -932

execute if score $launchTime CmdData matches 420..460 run particle minecraft:campfire_signal_smoke -1016 49 -922 2 2 2 .1 5 force
