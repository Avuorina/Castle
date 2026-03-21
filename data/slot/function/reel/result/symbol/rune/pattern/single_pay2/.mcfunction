#> slot:reel/result/symbol/rune/pattern/single_pay2/
#
# ２分探索
#
# @within function slot:reel/result/symbol/rune/

## 右中ルーン(2367..5915)
    execute if score @s _ matches 2367..3254 run function slot:reel/result/symbol/rune/pattern/single_pay2/1
    execute if score @s _ matches 3255..4142 run function slot:reel/result/symbol/rune/pattern/single_pay2/2
    execute if score @s _ matches 4143..5030 run function slot:reel/result/symbol/rune/pattern/single_pay2/3
    execute if score @s _ matches 5031..5915 run function slot:reel/result/symbol/rune/pattern/single_pay2/4

say シングルーン(Payout 2)