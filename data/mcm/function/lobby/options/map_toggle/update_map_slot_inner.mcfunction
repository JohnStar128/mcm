
$execute unless data storage mcm:options options.locked if score $one math matches $(enabled) run \
    data merge entity @s {text:'[{"translate":"$(translate)"},"\\n", {"translate":"mcm.options.enabled","color":"green"}]',background:1073741824}

$execute unless data storage mcm:options options.locked if score $zero math matches $(enabled) run \
    data merge entity @s {text:'[{"translate":"$(translate)"},"\\n", {"translate":"mcm.options.disabled","color":"dark_red"}]', background:1073741824}

    
$execute if data storage mcm:options options.locked if score $one math matches $(enabled) run \
    data merge entity @s {text:'[{"translate":"$(translate)"},"\\n", {"translate":"mcm.options.enabled","color":"gray"}]',background:1073741824}

$execute if data storage mcm:options options.locked if score $zero math matches $(enabled) run \
    data merge entity @s {text:'[{"translate":"$(translate)"},"\\n", {"translate":"mcm.options.disabled","color":"dark_gray"}]', background:1073741824}