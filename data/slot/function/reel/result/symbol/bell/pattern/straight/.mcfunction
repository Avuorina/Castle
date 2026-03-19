#> slot:reel/result/symbol/bell/pattern/straight/
#
# 二分探索
#
# @within function slot:reel/result/symbol/bell/

## 横ベル
execute if score @s _ matches 1..15 run function slot:reel/result/symbol/bell/pattern/straight/1
execute if score @s _ matches 16..30 run function slot:reel/result/symbol/bell/pattern/straight/2
execute if score @s _ matches 31..45 run function slot:reel/result/symbol/bell/pattern/straight/3
execute if score @s _ matches 46..60 run function slot:reel/result/symbol/bell/pattern/straight/4
