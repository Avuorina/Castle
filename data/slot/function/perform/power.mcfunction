#> slot:perform/dispatch/select_scenario
#
# 演出のパワーを決める
#
# PerformPower:
#   0 = なし(通常)  1 = 弱予告  2 = 中予告  3 = 強予告  4 = 超強予告
#
# @within function slot:reel/result/set_normal

## 乱数
    execute store result score @s _ run random value 1..1000

## ハズレ(カス=1)：弱め中心、まれに強でフェイク（信頼度<100%を作る）
    execute if score @s ResultID matches 1 if score @s _ matches 1..850 run scoreboard players set @s PerformPower 0
    execute if score @s ResultID matches 1 if score @s _ matches 851..960 run scoreboard players set @s PerformPower 1
    execute if score @s ResultID matches 1 if score @s _ matches 961..995 run scoreboard players set @s PerformPower 2
    execute if score @s ResultID matches 1 if score @s _ matches 996..1000 run scoreboard players set @s PerformPower 3

## 小役(ベル/リプレイ=2..5)
    execute if score @s ResultID matches 2..5 if score @s _ matches 1..500 run scoreboard players set @s PerformPower 0
    execute if score @s ResultID matches 2..5 if score @s _ matches 501..800 run scoreboard players set @s PerformPower 1
    execute if score @s ResultID matches 2..5 if score @s _ matches 801..950 run scoreboard players set @s PerformPower 2
    execute if score @s ResultID matches 2..5 if score @s _ matches 951..1000 run scoreboard players set @s PerformPower 3

## レア(ルーン=6..11)：強予告・カットイン中心
    execute if score @s ResultID matches 6..11 if score @s _ matches 1..250 run scoreboard players set @s PerformPower 2
    execute if score @s ResultID matches 6..11 if score @s _ matches 251..700 run scoreboard players set @s PerformPower 3
    execute if score @s ResultID matches 6..11 if score @s _ matches 701..1000 run scoreboard players set @s PerformPower 4

## 最強(ニンゲンヤメマスカ=12)
    execute if score @s ResultID matches 12 run scoreboard players set @s PerformPower 4

## 演出進行用カウンタ初期化
    #scoreboard players set @s PerformStep 0
    #scoreboard players set @s PerformTimer 0

## 演出決め
    function slot:perform/normal/
    # 演出の真っ最中であることを示そう。
    tag @s add InPerform

## RESET
    scoreboard players reset @s _
