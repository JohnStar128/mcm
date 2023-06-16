#> Takes input from $angle math
#> Output in $result math

# Normalize negative values

scoreboard players operation $angle math %= $2^15 math

scoreboard players set $sign math 1
execute if score $angle math matches 16385.. run scoreboard players set $sign math -1
execute if score $angle math matches 16385.. run scoreboard players operation $angle math -= $2^14 math

scoreboard players operation $temp math = $2^14 math
execute if score $angle math matches 8192.. run scoreboard players operation $temp math -= $angle math
execute if score $angle math matches 8192.. run scoreboard players operation $angle math = $temp math

# Algorithm from
# http://www.coranac.com/2009/07/sines/

# a = 12
# n = 13
# p = 31
# q = 30
# r = 3
# A1 = 1685472549
# B1 = 1373181078
# C1 = 146210

# implements  y * 2^-n * ( A1 - 2^(q-p)* y * 2^-n * y * 2^-n * [B1 - 2^-r * y * 2^-n * C1 * y]) * 2^(a-q)
scoreboard players operation $result math = $C1 math
scoreboard players operation $result math *= $angle math
scoreboard players operation $result math /= $2^n math

scoreboard players operation $result math *= $angle math
scoreboard players operation $result math /= $2^r math
scoreboard players operation $result math *= $-1 math
scoreboard players operation $result math += $B1 math

scoreboard players operation $result math /= $2^n math
scoreboard players operation $result math *= $angle math

scoreboard players operation $result math /= $2^n math
scoreboard players operation $result math *= $angle math

scoreboard players operation $result math /= $2^(p-q) math
scoreboard players operation $result math *= $-1 math
scoreboard players operation $result math += $A1 math

scoreboard players operation $result math /= $2^n math
scoreboard players operation $result math *= $angle math

scoreboard players operation $result math += $2^(q-a-1) math
scoreboard players operation $result math /= $2^(q-a) math

scoreboard players operation $result math *= $sign math