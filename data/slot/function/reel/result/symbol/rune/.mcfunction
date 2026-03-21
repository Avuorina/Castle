#> slot:reel/result/symbol/rune/
#
# ルーン！
#
# @within function slot:reel/result/result_normal

## パターンを選べ！
    execute store result score @s _ run random value 1..8192
# シングル(リプレイ) 2366/8192
    execute if score @s _ matches 1..1282 run function slot:reel/result/symbol/rune/pattern/single_rep/branch
    execute if score @s _ matches 1283..2366 run function slot:reel/result/symbol/rune/pattern/single_rep/branch2

# シングル(payout 2) 3549 /8192
    execute if score @s _ matches 2367..5915 run function slot:reel/result/symbol/rune/pattern/single_pay2/

# ダブル 1498/8192
    execute if score @s _ matches 5916..6665 run function slot:reel/result/symbol/rune/pattern/double/branch
    execute if score @s _ matches 6666..7413 run function slot:reel/result/symbol/rune/pattern/double/branch2

# チェリー 374/8192
    execute if score @s _ matches 7414..7787 run function slot:reel/result/symbol/rune/pattern/cherry/

# V 374/8192
    execute if score @s _ matches 7788..8161 run function slot:reel/result/symbol/rune/pattern/v/

# トリプル 31/8192
    execute if score @s _ matches 8162..8192 run function slot:reel/result/symbol/rune/pattern/triple/

## 結果ID(6..11) シングルrep = 6 シングルpay2 = 7 ダブル = 8 チェリー = 9 V = 10 トリプル = 11
    execute if score @s _ matches 1..2366 run scoreboard players set @s ResultID 6
    execute if score @s _ matches 2367..5915 run scoreboard players set @s ResultID 7
    execute if score @s _ matches 5916..7413 run scoreboard players set @s ResultID 8
    execute if score @s _ matches 7414..7787 run scoreboard players set @s ResultID 9
    execute if score @s _ matches 7788..8161 run scoreboard players set @s ResultID 10
    execute if score @s _ matches 8162..8192 run scoreboard players set @s ResultID 11

## RESET
    scoreboard players reset @s _
