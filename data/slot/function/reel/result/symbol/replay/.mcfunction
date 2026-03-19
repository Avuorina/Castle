#> slot:reel/result/symbol/replay/
#
# リプレイが揃った時の処理
#
# @within function slot:reel/result/set

## パターンを選べ！
    execute store result score @s _ run random value 1..100
    execute if score @s _ matches 1..60 run function slot:reel/result/symbol/replay/pattern/straight/
    execute if score @s _ matches 61..100 run function slot:reel/result/symbol/replay/pattern/diagonal/

## 結果ID リプレイ = 3
    scoreboard players set @s ResultID 3

## RESET
    scoreboard players reset @s _