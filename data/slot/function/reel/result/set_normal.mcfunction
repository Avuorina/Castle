#> reel:result/set
#
#
#
# @within function slot:is_stanby

# リプレイ：1364/6820(20%)
# ルーン：220/6820(3.2%)
# ベル：341/6820(5%)
# ニンゲンヤメマスカ：10/6820(0.15%)
# チェリールーン：
# vルーン：
# カス役：4885/6820 役72%

## 数値を選定
    execute store result score @s _ run random value 1..6820

## 各役の処理に移るよ
# カス役
    execute if score @s[scores={SlotState=1}] _ matches 1..4885 run function slot:reel/result/symbol/kas/
# リプレイ
    execute if score @s[scores={SlotState=1}] _ matches 4886..6249 run function slot:reel/result/symbol/replay/
# ルーン
    execute if score @s[scores={SlotState=1}] _ matches 6250..6469 run function slot:reel/result/symbol/rune/
# ベル
    execute if score @s[scores={SlotState=1}] _ matches 6470..6810 run function slot:reel/result/symbol/bell/
# ニンゲンヤメマスカ
    execute if score @s[scores={SlotState=1}] _ matches 6811..6820 run function slot:reel/result/symbol/ningen/

## RESET
    scoreboard players reset @s _

## SlotState=2 役が決まったよ
    scoreboard players set @s SlotState 2