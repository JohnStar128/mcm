
$execute as @a run trigger $(objective)
$scoreboard players reset @a $(objective)
$data remove storage mcm:scoreboards active_triggers[{objective:"$(objective)"}]
