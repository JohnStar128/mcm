#> Summon displays and interactions to give players books
$execute positioned$(pos)if entity @e[type=item_display,tag=book_display,distance=..1] run return fail
$execute positioned$(pos)run summon item_display$(offset1){item:{id:"book",Count:1b,components:{"minecraft:item_model":"minecraft:misc/3dbook"}},Tags:["MapEntity","book_display"],transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 1.0, 0.0, 0.0, 0.0, 1.0],Rotation:$(rotation)}
$execute positioned$(pos)run summon interaction$(offset2){height:0.75f,width:0.75f,Tags:["MapEntity","book_interaction"],response:1b,Rotation:$(rotation)}
