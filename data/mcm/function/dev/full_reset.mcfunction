#> Reset and re-initialize everything.
#> Run a /reload after using
data remove storage mcm:game_state finished_init

#temp
tag @a remove innocent
tag @a remove gunner
tag @a remove murderer
tag @a remove spectator
tag @a remove shot_innocent
tag @a remove free_recall
bossbar remove game_display
advancement revoke @s only mcm:hit_detection/player_got_hit
advancement revoke @s only mcm:hit_detection/player_hit_someone
