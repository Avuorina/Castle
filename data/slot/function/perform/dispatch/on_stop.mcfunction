#> slot:perform/dispatch/on_stop
#
# 【再生レイヤー】リール停止ごとの演出ディスパッチ。
# ButtonState = 第何停止か(1..3)。PerformScenario と組み合わせて分岐。
# 結果は変えない。各ボタン update の末尾から呼ぶ。
#
# @within function slot:parts/button/push/left/update
# @within function slot:parts/button/push/center/update
# @within function slot:parts/button/push/right/update
#tellraw @a[team=Debug] [{"score": {"name": "@s", "objective": "ButtonState"}},{"text": ":"},{"score": {"name": "@s", "objective": "PerformCondition"}}]
## 第1停止
    $execute if score @s ButtonState matches 1 if score @s PerformCondition matches 1..3 run function slot:perform/normal/$(temp)/exe

## 第2停止
    $execute if score @s ButtonState matches 2 if score @s PerformCondition matches 2..3 run function slot:perform/normal/$(temp)/exe

## 第3停止
    $execute if score @s ButtonState matches 3 if score @s PerformCondition matches 3 run function slot:perform/normal/$(temp)/exe

#[TODO] 停止位置(Result_L/C/R)に応じた滑り・フラッシュ等
