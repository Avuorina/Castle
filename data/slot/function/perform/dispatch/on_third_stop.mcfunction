#> slot:perform/dispatch/on_third_stop
#
# 【再生レイヤー】全リール停止後の演出ディスパッチ。
# 成否演出を出す。結果は ResultID で確定済みなので、それに沿わせるだけ。
#
# @within function slot:tick/machine

## 煽ったがハズレ（信頼度演出の「裏切り」）
    execute if score @s ResultID matches 1 if score @s PerformScenario matches 3.. run tellraw @a[team=Debug] [{"text":"[演出] 煽ったが…ハズレ","color":"red"}]

## 役成立
    execute if score @s ResultID matches 2.. if score @s PerformScenario matches 1.. run tellraw @a[team=Debug] [{"text":"[演出] 揃った！","color":"green"}]

#[TODO] 役成立時のフラッシュ/ファンファーレ、PerformScenario リセットは slot:reset で実施
