#> slot:reel/result/result_normal
#
#
#
# @within function slot:is_stanby

## カス役 = 1
    execute if score @s ResultID matches 1 run function slot:reel/result/symbol/kas/next
## ベル役 = 2
    execute if score @s ResultID matches 2 run function slot:reel/result/symbol/bell/next
## リプレイ役 = 3
    execute if score @s ResultID matches 3..5 run function slot:reel/result/symbol/replay/next
## ルーン役 = 4
    execute if score @s ResultID matches 6..11 run function slot:reel/result/symbol/rune/next
## ニンゲンヤメマスカ役 = 5
    execute if score @s ResultID matches 12 run function slot:reel/result/symbol/ningen/next

## ポイント追加処理
    scoreboard players operation $AddPoint _ = @s Point
    execute as @p run function player:point/