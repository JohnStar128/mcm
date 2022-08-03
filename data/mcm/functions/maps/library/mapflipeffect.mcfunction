execute as @a[tag=queued] at @s run effect give @s darkness 10 4 true
execute as @a[tag=queued] at @s run playsound minecraft:block.portal.trigger block @s ~ ~ ~ 1 0 1
execute as @a[tag=queued] at @s run worldborder set 2210
execute as @a[tag=queued] at @s run worldborder warning distance 950
execute as @a[tag=queued] at @s run scoreboard players set $mapflipeffect CmdData 0
execute as @a[tag=queued] at @s run playsound minecraft:entity.elder_guardian.curse block @s ~ ~ ~ 5 0.5