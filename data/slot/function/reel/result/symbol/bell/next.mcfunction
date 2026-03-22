#> slot:reel/result/symbol/bell/next
#
# ベル役
#
# @within function slot:reel/result/result_normal

## 15枚払い出し
    scoreboard players set @s Payout 15

## 払い出し
    function slot:money/payout/

## 周期ポイント追加
    scoreboard players add @s PointIn 5

## リセット
    function slot:reset
    scoreboard players set @s SlotState 0