#> slot:reel/result/symbol/rune/pattern/single/branch
#
# ２分探索
#
# @within function slot:reel/result/symbol/rune/

## 左上もしくは右上にルーン(1283..2366)
    execute if score @s _ matches 1283..1553 run function slot:reel/result/symbol/rune/pattern/single_rep/5
    execute if score @s _ matches 1554..1824 run function slot:reel/result/symbol/rune/pattern/single_rep/6
    execute if score @s _ matches 1825..2094 run function slot:reel/result/symbol/rune/pattern/single_rep/7
    execute if score @s _ matches 2095..2366 run function slot:reel/result/symbol/rune/pattern/single_rep/8

say シングルーン(rep)