#> reel:result/set
#
#
#
# @within function slot:is_stanby

# リプレイ：1364/6820(20%)
# ルーン：220/6820(3.2%)
# ベル：341/6820(5%)
# ニンゲンヤメマスカ：10/6820(0.15%)
# カス役：4885/6820(71.6%)

## 数値を選定
    execute store result score @s _ run random value 1..6820

## 各役の処理に移るよ
# カス役
    execute if score @s[scores={SlotState=1}] _ matches 1..4885 run function slot:reel/result/symbol/kas/
# リプレイ
    execute if score @s[scores={SlotState=1}] _ matches 4886..6249 run function slot:reel/result/symbol/replay/
# ルーン
    execute if score @s[scores={SlotState=1}] _ matches 6250..6469 run function slot:reel/result/symbol/rune/
    #execute if score @s[scores={SlotState=1}] _ matches 1..6820 run function slot:reel/result/symbol/rune/
# ベル
    execute if score @s[scores={SlotState=1}] _ matches 6470..6810 run function slot:reel/result/symbol/bell/
# ニンゲンヤメマスカ
    execute if score @s[scores={SlotState=1}] _ matches 6811..6820 run function slot:reel/result/symbol/ningen/

## 指定されてないリールがあるなら、ランダムにする
    execute store result score @s _ run random value 0..19
    execute unless score @s Result_L matches 0..19 run scoreboard players operation @s Result_L = @s _
    execute unless score @s Result_C matches 0..19 run scoreboard players operation @s Result_C = @s _
    execute unless score @s Result_R matches 0..19 run scoreboard players operation @s Result_R = @s _

## RESET
    scoreboard players reset @s _

## SlotState=2 役が決まったよ
    scoreboard players set @s SlotState 2