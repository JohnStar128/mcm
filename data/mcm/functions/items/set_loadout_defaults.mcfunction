#> Sets the default items
#> Note this does not overrnum_ide the players current selection but it does set unset ones


execute unless score @s loadout_knife = @s loadout_knife store result score @s loadout_knife run function mcm:items/num_id {item:knife}
execute unless score @s loadout_1 = @s loadout_1 store result score @s loadout_1 run function mcm:items/num_id {item:player_tracker}
execute unless score @s loadout_2 = @s loadout_2 store result score @s loadout_2 run function mcm:items/num_id {item:teleporter}
execute unless score @s loadout_3 = @s loadout_3 store result score @s loadout_3 run function mcm:items/num_id {item:adrenaline}