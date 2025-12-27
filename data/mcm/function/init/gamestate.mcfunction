# Clear previous state, this should only be run on reload
data remove storage mcm:game_state default

# We'd like a default state to just copy from for easy resetting
data merge storage mcm:game_state {default:{gamemode:"classic", selected_map:"", selected_map_idx:-1, current_stage:"voting"}}

# Our custom game rules
data modify storage mcm:game_state default merge value { \
    rules:{ \
        murderer_selection:"smart", \
        murderer_count:1, \
        time_minutes:10, \
        auto_start:true, \
        animate:true, \
        murderer_friendly_fire:false, \
        darkness:false, \
        starting_scrap:1, \
        update_player_count:true, \
        destroy_guns:false, \
        min_players:3, \
        max_players:24, \
        min_murderers:1, \
        max_murderers:3, \
        gun_delay:2.5, \
        gun_range:8, \
        adrenaline_duration:5, \
        scrap_frequency:5, \
        scrap_chance:0.90, \
        gun_cost:10, \ 
        sound_frequency:5, \
        sound_chance:0.50 \
    } \
}

# Copy the default state to the active state we'll use from now on
data modify storage mcm:game_state state set from storage mcm:game_state default
