
particle smoke ~ ~ ~ 0 0 0 0.05 10 force
particle block{block_state: {Name: "gold_block"}} ~ ~ ~ 0 0 0 0.1 4 force
playsound block.stone.break master @a ~ ~ ~ 1 2
execute on vehicle run kill @s
kill @s

$function mcm:util/timer/delete {name:"$bullet_$(id)"}
