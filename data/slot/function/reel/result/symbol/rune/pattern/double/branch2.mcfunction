#> slot:reel/result/symbol/rune/pattern/double/branch2
#
# 二分探索
#
# @within function slot:reel/result/symbol/rune/

## 左上と真ん中or右下(6666..7413)
    execute if score @s _ matches 6666..6852 run function slot:reel/result/symbol/rune/pattern/double/5
    execute if score @s _ matches 6853..7039 run function slot:reel/result/symbol/rune/pattern/double/6
    execute if score @s _ matches 7040..7226 run function slot:reel/result/symbol/rune/pattern/double/7
    execute if score @s _ matches 7227..7413 run function slot:reel/result/symbol/rune/pattern/double/8
