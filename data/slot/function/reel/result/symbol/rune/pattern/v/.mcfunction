#> slot:reel/result/symbol/rune/pattern/v/
#
# 2分探索
#
# @within function slot:reel/result/symbol/rune/

## 左固定右下(7788..8161)
    execute if score @s _ matches 7788..7874 run function slot:reel/result/symbol/rune/pattern/v/1
    execute if score @s _ matches 7875..7961 run function slot:reel/result/symbol/rune/pattern/v/2
    execute if score @s _ matches 7962..8048 run function slot:reel/result/symbol/rune/pattern/v/3
    execute if score @s _ matches 8049..8161 run function slot:reel/result/symbol/rune/pattern/v/4
