#> slot:perform/normal/
#
# 通常役
#
# @within function slot:reel/result/set_normal

## 演出を抽選する
    #execute store result score @s _ run random value 1..1000
    # なにもないなら低い確率で
    #execute if score @s ResultID matches 1 if score @s _ matches 1..800 run return fail
    #execute if score @s ResultID matches 1 if score @s _ matches 801..900 run function slot:perform/normal/smorker/
    #execute if score @s ResultID matches 1 if score @s _ matches 901..1000 run function slot:perform/normal/sequential/parking/
    # なんらか役が揃うなら
    #execute if score @s ResultID matches 2..7 if score @s _ matches 1..600 run return fail
    #execute if score @s ResultID matches 2..7 if score @s _ matches 601..800 run function slot:perform/normal/smorker/
    #execute if score @s ResultID matches 2..7 if score @s _ matches 801..1000 run function slot:perform/normal/sequential/parking/
    # レア役なら
    #execute if score @s ResultID matches 8..11 if score @s _ matches 1..300 run return fail
    #execute if score @s ResultID matches 8..11 if score @s _ matches 301..650 run function slot:perform/normal/smorker/
    #execute if score @s ResultID matches 8..11 if score @s _ matches 651..1000 run function slot:perform/normal/sequential/parking/
    # BARなら
    #execute if score @s ResultID matches 12 if score @s _ matches 1..1000 run function slot:perform/normal/smorker/

## 演出を抽選する。
# (まだ２つしか演出ないから別に...)
    execute store result score @s _ run random value 1..1000
    execute if score @s _ matches 1..500 run return fail
    execute if score @s PerformPower matches 0..5 if score @s _ matches 501..750 run function slot:perform/normal/smorker/
    execute if score @s PerformPower matches 0..5 if score @s _ matches 751..1000 run function slot:perform/normal/sequential/parking/
