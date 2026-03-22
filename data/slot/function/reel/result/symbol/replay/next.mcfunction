#> slot:reel/result/symbol/replay/next
#
# リプレイ役
#
# @within function slot:reel/result/result_normal

## リプレイ
    execute if score @s ResultID matches 3 run tag @s add Replay
    execute if score @s ResultID matches 4 run scoreboard players set @s Payout 1
    execute if score @s ResultID matches 5 run scoreboard players set @s Payout 2

## 払い出し
    execute if score @s ResultID matches 4..5 run function slot:money/payout/

## 周期ポイント追加
    scoreboard players add @s Point 5

## リセット
    function slot:reset
    scoreboard players set @s SlotState 0