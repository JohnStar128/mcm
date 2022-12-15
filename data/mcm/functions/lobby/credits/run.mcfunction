#> Needs to be provided a position to run the credits from

#> Music
execute if score $credit_timer CmdData matches 100 as @a[predicate=mcm:bounding_boxes/credits] at @s run playsound minecraft:credits record @s ~ ~ ~ 2 1

#> Increment the timer
scoreboard players add $credit_timer CmdData 1

#> Run screen countdown
execute if score $credit_timer CmdData matches 0..99 run function mcm:lobby/credits/slides/countdown
#> Topaz
execute if score $credit_timer CmdData matches 100..199 run function mcm:lobby/credits/slides/topaz
#> Brownie
execute if score $credit_timer CmdData matches 200..299 run function mcm:lobby/credits/slides/brownie
#> John
execute if score $credit_timer CmdData matches 300..399 run function mcm:lobby/credits/slides/john
#> Blocky
execute if score $credit_timer CmdData matches 400..499 run function mcm:lobby/credits/slides/blocky
#> Yzero
execute if score $credit_timer CmdData matches 500..599 run function mcm:lobby/credits/slides/yzero
#> Evtema
execute if score $credit_timer CmdData matches 600..699 run function mcm:lobby/credits/slides/evtema
#> Kur
execute if score $credit_timer CmdData matches 700..799 run function mcm:lobby/credits/slides/kurusa
#> Chronos
execute if score $credit_timer CmdData matches 800..899 run function mcm:lobby/credits/slides/chronos
#> Cat
execute if score $credit_timer CmdData matches 900..999 run function mcm:lobby/credits/slides/cat
#> Lekro
execute if score $credit_timer CmdData matches 1000..1099 run function mcm:lobby/credits/slides/lekro
#> Zombie
execute if score $credit_timer CmdData matches 1100..1199 run function mcm:lobby/credits/slides/zombie
#> Jacob
execute if score $credit_timer CmdData matches 1200..1299 run function mcm:lobby/credits/slides/jacob
#> Map Contributors
execute if score $credit_timer CmdData matches 1300..1399 run function mcm:lobby/credits/slides/contrib
#> Special Thanks
execute if score $credit_timer CmdData matches 1400..1899 run function mcm:lobby/credits/slides/thanks
#> Thanks for playing
execute if score $credit_timer CmdData matches 1900 run place template mcm:credits_slides/thanks_for_playing ~ ~ ~
#> Reset screen and allow replay
execute if score $credit_timer CmdData matches 2040 run function mcm:lobby/credits/reset
