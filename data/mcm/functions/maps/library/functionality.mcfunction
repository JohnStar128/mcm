execute as @e[tag=Chandelier] at @s if entity @a[limit=3,distance=..3] run scoreboard players add $chandelierdroptimer CmdData 1
execute as @e[tag=Chandelier] at @s unless entity @a[limit=3,distance=..3] run scoreboard players set $chandelierdroptimer CmdData 0


execute if score $chandelierdroptimer CmdData matches 100.. run tag @e[tag=Chandelier,tag=!canDropChandelier] add canDropChandelier
execute as @e[tag=canDropChandelier] at @s run function mcm:game/dropchandelier