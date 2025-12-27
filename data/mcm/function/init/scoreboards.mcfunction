
#> Scoreboards
data remove storage mcm:scoreboards boards
data remove storage mcm:scoreboards options

data merge storage mcm:scoreboards { \
    boards:[ \
        {objective:"vars", criteria:"dummy", display:"Variables", persist:"1"}, \
        {objective:"playerUUID", criteria:"dummy", display:"Player UUID", persist:"1"}, \
        {objective:"targetUUID", criteria:"dummy", display:"Target UUID", persist:"0"}, \
        {objective:"map_vote", criteria:"dummy", display:"Votes", persist:"0"}, \
        {objective:"vote_totals", criteria:"dummy", display:"Vote Totals", persist:"1"}, \
        {objective:"timers", criteria:"dummy", display:"Timers", persist:"1"}, \
        {objective:"math", criteria:"dummy", display:"Math", persist:"1"}, \
        {objective:"gameID", criteria:"dummy", display:"Game ID", persist:"1"}, \
        {objective:"lobby_cosmetic_display", criteria:"dummy", display:"Cosmetic Display", persist:"1"}, \
        {objective:"selected_head", criteria:"dummy", display:"Selected Hat ID", persist:"1"}, \
        {objective:"game_stats", criteria:"dummy", display:"Kills", persist:"0"}, \
        {objective:"time_alive", criteria:"dummy", display:"Time Alive", persist:"0"}, \
        {objective:"loadout_knife", criteria:"dummy", display:"Knife Loadout", persist:"1"}, \
        {objective:"loadout_1", criteria:"dummy", display:"Loadout 1", persist:"1"}, \
        {objective:"loadout_2", criteria:"dummy", display:"Loadout 2", persist:"1"}, \
        {objective:"loadout_3", criteria:"dummy", display:"Loadout 3", persist:"1"}, \
        {objective:"version", criteria:"dummy", display:"Version", persist:"1"}, \
        {objective:"leave", criteria:"minecraft.custom:minecraft.leave_game", display:"Rejoin", persist:"0"}, \
        {objective:"map_trigger", criteria:"trigger", display:"Map Trigger", persist:"0"}, \
        {objective:"print_rules", criteria:"trigger", display:"Print Game Rules", persist:"0"}, \
        {objective:"print_events", criteria:"trigger", display:"Print Game Events", persist:"0"}, \
        {objective:"hatchange", criteria:"trigger", display:"Change Hat", persist:"0"}, \
    ], \
    active_triggers: [] \
}

data modify storage mcm:scoreboards temp set from storage mcm:scoreboards boards
function mcm:util/loops/for_each {iter:"data storage mcm:scoreboards boards[]", \
                                  fn:"mcm:init/create_scoreboards", \
                                  args:"with storage mcm:scoreboards temp[0]", \
                                  update:"data remove storage mcm:scoreboards temp[0]"}
data remove storage mcm:scoreboards temp

#scoreboard objectives add RingBell minecraft.custom:minecraft.bell_ring
#scoreboard objectives add stuck trigger
#scoreboard objectives add jump minecraft.custom:minecraft.jump
#scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
#scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
#scoreboard objectives add crouch minecraft.custom:minecraft.crouch_one_cm
#scoreboard objectives add cyberpunk dummy
#scoreboard objectives add vineyard_secret minecraft.used:minecraft.bone_meal
#scoreboard objectives add riverboat dummy
#scoreboard objectives add disableTips trigger
#scoreboard objectives add freezing dummy
#scoreboard objectives add cabin_secret minecraft.used:minecraft.flint_and_steel
#scoreboard objectives add drankPotion minecraft.used:minecraft.potion
#scoreboard objectives add forklifttest dummy
#scoreboard objectives add forkliftresponse trigger
#scoreboard objectives add forklift_interact dummy
#scoreboard objectives add nojump dummy
