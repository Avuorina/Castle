#> slot:reel/result/symbol/rune/next
#
# ルーン役
#
# @within function slot:reel/result/result_normal

## ルーン シングルrep = 6 シングルpay2 = 7 ダブル = 8 チェリー = 9 V = 10 トリプル = 11
    execute if score @s ResultID matches 6 run tag @s add Replay
    execute if score @s ResultID matches 7 run scoreboard players set @s Payout 2
    execute if score @s ResultID matches 8..11 run tag @s add Replay
## 周期ポイント追加
# 振り分け用
    execute store result score @s _ run random value 1..100
    execute if score @s ResultID matches 6..7 if score @s _ matches 1..70 run scoreboard players add @s Point 10
    execute if score @s ResultID matches 6..7 if score @s _ matches 71..97 run scoreboard players add @s Point 20
    execute if score @s ResultID matches 6..7 if score @s _ matches 98..100 run scoreboard players add @s Point 30
    execute if score @s ResultID matches 8..9 if score @s _ matches 1..72 run scoreboard players add @s Point 30
    execute if score @s ResultID matches 8..9 if score @s _ matches 73..99 run scoreboard players add @s Point 50
    execute if score @s ResultID matches 8..10 if score @s _ matches 100 run scoreboard players add @s Point 100
    execute if score @s ResultID matches 11 run scoreboard players add @s Point 600

## 払い出し
    execute if score @s ResultID matches 7 run function slot:money/payout/

## リセット
    function slot:reset
    scoreboard players set @s SlotState 0