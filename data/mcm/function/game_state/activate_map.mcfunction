#> Wrapper that queues the actual activate function once loading finishes
$function mcm:util/queue/add {fn:"function mcm:game_state/activate_map_helper with storage mcm:maps list[{name:'$(name)'}]",condition:"if loaded $(loading_point)"}
