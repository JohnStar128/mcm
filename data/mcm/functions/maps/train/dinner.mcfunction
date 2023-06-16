scoreboard players remove $dinner_timer CmdData 1
execute if score $dinner_timer CmdData matches 0 store result score $diners CmdData if entity @e[type=interaction,tag=dinner_plate,nbt=!{interaction:{player:[0,0,0,0]}}]
execute if score $diners CmdData matches 2 as @e[type=horse,tag=dinner_seat,limit=2] on passengers if entity @s[advancements={mcm:secrets/train/dinner=false}] run advancement grant @s only mcm:secrets/train/dinner
execute if score $dinner_timer CmdData matches ..0 run scoreboard players set $dinner_timer CmdData 600
