# Kill old entities
kill @e[type=item_display, tag=vote_display]
kill @e[type=text_display, tag=vote_text_display]
execute as @e[type=interaction, tag=vote_interaction] run function mcm:util/interactable/remove

# Summon markers for all available maps
data modify storage mcm:voting temp.list set from storage mcm:maps list
function mcm:util/loops/for_each {iter:"data storage mcm:maps list[]", \
                                  fn:"mcm:voting/summon_markers", \
                                  args:"with storage mcm:voting temp.list[0]", \
                                  update:"data remove storage mcm:voting temp.list[0]"}
data remove storage mcm:voting temp

# If this is called because a map was disabled mid-vote,
# copy over other maps that are still enabled,
# otherwise randomly select remaining maps
execute as @e[type=marker, tag=map_vote, tag=selected] run tag @s add old
execute if entity @e[type=marker, tag=map_vote, tag=old] run tag @e[type=marker, tag=map_vote, tag=!selected, sort=random, limit=1] add selected
execute unless entity @e[type=marker, tag=map_vote, tag=old] run tag @e[type=marker, tag=map_vote, sort=random, limit=6] add selected
kill @e[type=marker, tag=map_vote, tag=!selected]

# Assign markers to voting slots in storage
execute as @e[type=marker, tag=map_vote, tag=!old, sort=random] run function mcm:voting/assign_slots with entity @s data
tag @e[type=marker, tag=map_vote, tag=old] remove old

# Create posters
data modify storage mcm:voting temp.list set from storage mcm:voting slots
function mcm:util/loops/for_each {iter:"data storage mcm:voting slots[]", \
                                  fn:"mcm:voting/summon_posters", \
                                  args:"with storage mcm:voting temp.list[0]", \
                                  update:"data remove storage mcm:voting temp.list[0]"}
data remove storage mcm:voting temp

# Vacant slots
data modify storage mcm:voting temp.list set from storage mcm:voting vacant_slots
function mcm:util/loops/for_each {iter:"data storage mcm:voting vacant_slots[]", \
                                  fn:"mcm:voting/vacant_poster_slot", \
                                  args:"with storage mcm:voting temp.list[0]", \
                                  update:"data remove storage mcm:voting temp.list[0]"}
data remove storage mcm:voting temp

# Initial vote count
execute as @e[type=interaction, tag=vote_interaction] on passengers at @s run function mcm:voting/refresh_counts with entity @s data
