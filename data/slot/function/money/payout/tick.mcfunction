#> slot:money/payout/tick
#
# 払い出し中
#
# @within function slot:money/payout/

## 払い出しする
    scoreboard players remove @s Payout 1
    scoreboard players add @s Medal 1
    function slot:money/update
    execute if score @s Payout matches 0 run scoreboard players set @s InPayout 0

## 終わったらリセット
    execute if score @s InPayout matches 1 run return fail
    scoreboard players reset @s Payout
