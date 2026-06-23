#> slot:perform/normal/
#
# 通常役
#
# @within function slot:reel/result/set_normal

## 演出を抽選する。
# (まだ２つしか演出ないから別に...)
    execute store result score @s _ run random value 1..1000
    execute if score @s _ matches 1..500 run return fail
    execute if score @s PerformPower matches 0..5 if score @s _ matches 501..1000 run function slot:perform/normal/smorker/
    #execute if score @s PerformPower matches 0..5 if score @s _ matches 751..1000 run function slot:perform/normal/sequential/parking/
