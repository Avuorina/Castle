#> slot:reel/result/symbol/rune/pattern/single/branch
#
# ２分探索
#
# @within function slot:reel/result/symbol/rune/

## 左上もしくは右上にルーン(1..1282)
    execute if score @s _ matches 1..320 run function slot:reel/result/symbol/rune/pattern/single_rep/1
    execute if score @s _ matches 321..640 run function slot:reel/result/symbol/rune/pattern/single_rep/2
    execute if score @s _ matches 641..960 run function slot:reel/result/symbol/rune/pattern/single_rep/3
    execute if score @s _ matches 961..1282 run function slot:reel/result/symbol/rune/pattern/single_rep/4
