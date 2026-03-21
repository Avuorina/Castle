#> slot:reel/result/symbol/rune/pattern/double/branch
#
# 二分探索
#
# @within function slot:reel/result/symbol/rune/

## 左上と真ん中or右下(5916..6665)
    execute if score @s _ matches 5916..6102 run function slot:reel/result/symbol/rune/pattern/double/1
    execute if score @s _ matches 6103..6289 run function slot:reel/result/symbol/rune/pattern/double/2
    execute if score @s _ matches 6290..6476 run function slot:reel/result/symbol/rune/pattern/double/3
    execute if score @s _ matches 6477..6665 run function slot:reel/result/symbol/rune/pattern/double/4

say ダブルーン