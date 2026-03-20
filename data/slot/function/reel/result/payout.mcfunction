#> slot:reel/result/payout
#
# 払い出し
#
# @within function slot:reel/result/symbol/bell/next

## 払い出し
    scoreboard players operation @s Medal -= @s Payout
    function money:detect

## リセット
    function slot:reset
    scoreboard players set @s SlotState 0