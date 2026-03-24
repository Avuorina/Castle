#> slot:perform/normal/
#
# 通常役
#
# @within function slot:reel/result/set_normal

## 演出を抽選する
    execute store result score @s _ run random value 1..1000
    # なにもないなら低い確率で
    execute if score @s ResultID matches 1 if score @s _ matches 1..700 run return fail
    execute if score @s ResultID matches 1 if score @s _ matches 701..1000 run function slot:perform/normal/smorker/
    # なんらか役が揃うなら
    execute if score @s ResultID matches 2..7 if score @s _ matches 1..200 run return fail
    execute if score @s ResultID matches 2..7 if score @s _ matches 201..1000 run function slot:perform/normal/smorker/
    # レア役なら
    execute if score @s ResultID matches 8..11 if score @s _ matches 1..100 run return fail
    execute if score @s ResultID matches 8..11 if score @s _ matches 101..1000 run function slot:perform/normal/smorker/
    # BARなら
    execute if score @s ResultID matches 12 if score @s _ matches 1..1000 run function slot:perform/normal/smorker/

    