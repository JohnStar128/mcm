execute unless data entity @e[type=interaction,tag=forklifttest,sort=nearest,limit=1] interaction run return fail

execute store result score $tempuuid playerUUID run data get entity @e[type=interaction,tag=forklifttest,sort=nearest,limit=1] interaction.player[0]
execute if predicate mcm:matches_uuid run return run data get entity @e[type=interaction,tag=forklifttest,sort=nearest,limit=1] UUID[0]

return fail
