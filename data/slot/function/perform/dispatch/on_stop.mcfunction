#> slot:perform/dispatch/on_stop
#
# 【再生レイヤー】リール停止ごとの演出ディスパッチ。
# ButtonState = 第何停止か(1..3)。PerformScenario と組み合わせて分岐。
# 結果は変えない。各ボタン update の末尾から呼ぶ。
#
# @within function slot:parts/button/push/left/update
# @within function slot:parts/button/push/center/update
# @within function slot:parts/button/push/right/update

## 第1停止
    execute if score @s ButtonState matches 1 if score @s PerformScenario matches 3.. run tellraw @a[team=Debug] [{"text":"[演出] 第1停止：テンパイ煽り","color":"yellow"}]

## 第2停止
    execute if score @s ButtonState matches 2 if score @s PerformScenario matches 3.. run tellraw @a[team=Debug] [{"text":"[演出] 第2停止：カットイン発生","color":"gold"}]
    execute if score @s ButtonState matches 2 if score @s PerformScenario matches 5 run playsound minecraft:block.note_block.pling player @a ~ ~ ~ 1 1.5

#[TODO] 停止位置(Result_L/C/R)に応じた滑り・フラッシュ等
