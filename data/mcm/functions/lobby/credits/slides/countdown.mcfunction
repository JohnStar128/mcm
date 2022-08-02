#> Really should rewrite this to be better
execute if score $credit_timer CmdData matches 1 as @a[predicate=mcm:bounding_boxes/credits] at @s run playsound minecraft:movie_start record @s ~ ~ ~ 1 1 1
#> Five
execute if score $credit_timer CmdData matches 1 run clone -254 -35 117 -251 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 3 run clone -247 -35 117 -244 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 6 run clone -240 -35 117 -237 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 8 run clone -233 -35 117 -230 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 10 run clone -226 -35 117 -223 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 13 run clone -219 -35 117 -216 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 16 run clone -212 -35 117 -209 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 18 run clone -205 -35 117 -202 -55 95 ~ ~ ~
#> Four
execute if score $credit_timer CmdData matches 20 run clone -198 -35 117 -195 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 23 run clone -191 -35 117 -188 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 26 run clone -184 -35 117 -181 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 28 run clone -177 -35 117 -174 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 30 run clone -170 -35 117 -167 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 33 run clone -163 -35 117 -160 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 36 run clone -156 -35 117 -153 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 38 run clone -149 -35 117 -146 -55 95 ~ ~ ~
#> Three
execute if score $credit_timer CmdData matches 40 run clone -142 -35 117 -139 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 43 run clone -135 -35 117 -132 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 46 run clone -128 -35 117 -125 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 48 run clone -121 -35 117 -118 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 50 run clone -114 -35 117 -111 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 53 run clone -107 -35 117 -104 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 56 run clone -100 -35 117 -97 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 58 run clone -93 -35 117 -90 -55 95 ~ ~ ~
#> Two
execute if score $credit_timer CmdData matches 60 run clone -86 -35 117 -83 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 63 run clone -79 -35 117 -76 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 66 run clone -72 -35 117 -69 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 68 run clone -65 -35 117 -62 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 70 run clone -58 -35 117 -55 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 73 run clone -51 -35 117 -48 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 76 run clone -44 -35 117 -41 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 78 run clone -37 -35 117 -34 -55 95 ~ ~ ~
#> One
execute if score $credit_timer CmdData matches 80 run clone -30 -35 117 -27 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 83 run clone -23 -35 117 -20 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 86 run clone -16 -35 117 -13 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 88 run clone -9 -35 117 -6 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 90 run clone -2 -35 117 1 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 93 run clone 5 -35 117 8 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 96 run clone 12 -35 117 15 -55 95 ~ ~ ~
execute if score $credit_timer CmdData matches 98 run clone 19 -35 117 22 -55 95 ~ ~ ~

execute if score $credit_timer CmdData matches 99 run fill ~3 ~20 ~22 ~1 ~ ~ air replace black_wool