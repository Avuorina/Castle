#> slot:reel/result/symbol/rune/pattern/triple/
#
# 2分探索
#
# @within function slot:reel/result/symbol/rune/

## 斜め揃い(8162..8192)
    execute if score @s _ matches 8162..8169 run function slot:reel/result/symbol/rune/pattern/triple/1
    execute if score @s _ matches 8170..8177 run function slot:reel/result/symbol/rune/pattern/triple/2
    execute if score @s _ matches 8178..8185 run function slot:reel/result/symbol/rune/pattern/triple/3
    execute if score @s _ matches 8186..8192 run function slot:reel/result/symbol/rune/pattern/triple/4
