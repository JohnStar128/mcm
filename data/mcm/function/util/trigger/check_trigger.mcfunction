
$execute as @a[scores={$(objective)=1..}] run $(fn)
$scoreboard players reset @a $(objective)
$scoreboard players enable @a $(objective)
