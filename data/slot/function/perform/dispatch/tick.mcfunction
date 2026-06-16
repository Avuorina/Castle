#> slot:perform/dispatch/tick
#
# 【再生レイヤー】回転中(SlotState=3)の毎tick演出。
# PerformTimer / PerformStep で「フレーム送り」だけを担当する。
# 結果は変えない。
#
# @within function slot:tick/machine

## タイマーが動いているシナリオだけ処理
    execute unless score @s PerformTimer matches 1.. run return fail

    scoreboard players add @s PerformTimer 1

## 例：20tickごとにフラッシュ音（PerformScenario ごとに差し替える想定）
    execute if score @s PerformTimer matches 20 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 0.6 2
    execute if score @s PerformTimer matches 20 run scoreboard players set @s PerformTimer 1

#[TODO] PerformScenario 別のフレーム制御（カットイン進行、ランプ点滅など）
