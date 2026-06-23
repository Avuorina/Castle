#> slot:perform/dispatch/reset
#
# 演出状態のリセット。1ゲーム終了時(slot:reset)から呼ぶ。
#
# @within function slot:reset

    scoreboard players reset @s PerformPower
    scoreboard players set @s PerformTimer 0
    scoreboard players set @s PerformStep 0
    scoreboard players reset @s PerformCondition