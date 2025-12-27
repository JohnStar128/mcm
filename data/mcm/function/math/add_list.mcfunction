
$execute store result score $cur_value vars run data get $(list)[$(idx)]
scoreboard players operation $total vars += $cur_value vars
scoreboard players reset $cur_value vars
