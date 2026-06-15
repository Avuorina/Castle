#> slot:perform/normal/sequential/ctrl_result
#
# 連続演出時の強さ具合によって役の排出を決める
#
# @within function slot:reel/result/set_normal

#[TODO]
# 違和感
# 
    tellraw @a[team=Debug] "連続演出中..."
## 数値を選定
    execute store result score @s _ run random value 1..6820

## 失敗時
    execute if entity @s[tag=SeqFail] run function slot:perform/normal/sequential/ctrl_result/fail

## 成功時
    execute if entity @s[tag=SeqSuccess] run function slot:perform/normal/sequential/ctrl_result/success

## 指定されてないリールがあるなら、ランダムにする
    execute store result score @s _ run random value 0..19
    execute unless score @s Result_L matches 0..19 run scoreboard players operation @s Result_L = @s _
    execute unless score @s Result_C matches 0..19 run scoreboard players operation @s Result_C = @s _
    execute unless score @s Result_R matches 0..19 run scoreboard players operation @s Result_R = @s _

## 演出に遷移
    function slot:perform/normal/sequential/

## RESET
    scoreboard players reset @s _

## SlotState=2 役が決まったよ
    scoreboard players set @s SlotState 2