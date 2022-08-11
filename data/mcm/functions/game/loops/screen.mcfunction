#> Uses startcountdown to display the countdown

#> White screen
scoreboard players operation $screenmath math = $startcountdown CmdData
scoreboard players operation $screenmath math %= $nine math
execute if score $screenmath math matches 0 run place template mcm:blank_screen_1 ~ ~ ~
execute if score $screenmath math matches 3 run place template mcm:blank_screen_2 ~ ~ ~
execute if score $screenmath math matches 6 run place template mcm:blank_screen_3 ~ ~ ~

#> Number countdown
execute if score $startcountdown CmdData matches 20 run place template mcm:countdown_1 ~1 ~ ~
execute if score $startcountdown CmdData matches 40 run place template mcm:countdown_2 ~1 ~ ~
execute if score $startcountdown CmdData matches 60 run place template mcm:countdown_3 ~1 ~ ~
execute if score $startcountdown CmdData matches 80 run place template mcm:countdown_4 ~1 ~ ~
execute if score $startcountdown CmdData matches 99 run place template mcm:countdown_5 ~1 ~ ~

#> Countdown tick
scoreboard players operation $screenmath math = $startcountdown CmdData
scoreboard players operation $screenmath math %= $twenty math
execute if score $screenmath math matches 18 run place template mcm:countdown_up ~3 ~ ~
execute if score $screenmath math matches 16 run place template mcm:countdown_upright ~3 ~ ~
execute if score $screenmath math matches 13 run place template mcm:countdown_right ~3 ~ ~
execute if score $screenmath math matches 10 run place template mcm:countdown_downright ~3 ~ ~
execute if score $screenmath math matches 8 run place template mcm:countdown_down ~3 ~ ~
execute if score $screenmath math matches 6 run place template mcm:countdown_downleft ~3 ~ ~
execute if score $screenmath math matches 3 run place template mcm:countdown_left ~3 ~ ~
execute if score $screenmath math matches 1 run place template mcm:countdown_upleft ~3 ~ ~

#> Clear at the end
execute if score $startcountdown CmdData matches 1 run fill ~3 ~20 ~22 ~1 ~ ~ air replace black_wool