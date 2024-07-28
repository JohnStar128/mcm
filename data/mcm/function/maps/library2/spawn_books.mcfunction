#> Respawn books in randomized locations
execute store result score $temp math if entity @e[type=item_display,tag=book_display]
execute if score $temp math matches 5.. run return fail
execute store result storage mcm:library idx int 1 run random value 0..317
function mcm:maps/library2/book_idx with storage mcm:library
function mcm:maps/library2/spawn_books
