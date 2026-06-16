#> slot:perform/dispatch/select_scenario
#
# 演出シナリオ抽選。ResultID で条件付けして PerformScenario を決める。
# ここが「信頼度」の本体 ＝ P(シナリオ | 結果) のテーブル。
# 結果(ResultID)は絶対に変えない。レバーオン時に一度だけ呼ぶ。
#
# PerformScenario:
#   0 = なし(通常)  1 = 弱予告  2 = 中予告  3 = 強予告  5 = カットイン
#
# @within function slot:reel/result/set_normal

## 乱数
    execute store result score @s _ run random value 1..1000

## ハズレ(カス=1)：弱め中心、まれに強でフェイク（信頼度<100%を作る）
    execute if score @s ResultID matches 1 if score @s _ matches 1..850 run scoreboard players set @s PerformScenario 0
    execute if score @s ResultID matches 1 if score @s _ matches 851..960 run scoreboard players set @s PerformScenario 1
    execute if score @s ResultID matches 1 if score @s _ matches 961..995 run scoreboard players set @s PerformScenario 2
    execute if score @s ResultID matches 1 if score @s _ matches 996..1000 run scoreboard players set @s PerformScenario 3

## 小役(ベル/リプレイ=2..5)
    execute if score @s ResultID matches 2..5 if score @s _ matches 1..500 run scoreboard players set @s PerformScenario 0
    execute if score @s ResultID matches 2..5 if score @s _ matches 501..800 run scoreboard players set @s PerformScenario 1
    execute if score @s ResultID matches 2..5 if score @s _ matches 801..950 run scoreboard players set @s PerformScenario 2
    execute if score @s ResultID matches 2..5 if score @s _ matches 951..1000 run scoreboard players set @s PerformScenario 3

## レア(ルーン=6..11)：強予告・カットイン中心
    execute if score @s ResultID matches 6..11 if score @s _ matches 1..250 run scoreboard players set @s PerformScenario 2
    execute if score @s ResultID matches 6..11 if score @s _ matches 251..700 run scoreboard players set @s PerformScenario 3
    execute if score @s ResultID matches 6..11 if score @s _ matches 701..1000 run scoreboard players set @s PerformScenario 5

## 最強(ニンゲンヤメマスカ=12)
    execute if score @s ResultID matches 12 run scoreboard players set @s PerformScenario 5

## 演出進行用カウンタ初期化
    scoreboard players set @s PerformStep 0
    scoreboard players set @s PerformTimer 0

## RESET
    scoreboard players reset @s _
