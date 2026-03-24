#> slot:perform/normal/smorker/
#
# 喫煙者大集合
#
# @within function 

#１人→デフォ
#２人→デフォ
#３人→中
#４人→強

## 抽選
    execute store result score @s _ run random value 1..1000

## カス役
    execute if score @s ResultID matches 1 if score @s _ matches 1..995 run function slot:perform/normal/smorker/default/
    execute if score @s ResultID matches 1 if score @s _ matches 996..999 run function slot:perform/normal/smorker/middle/
    execute if score @s ResultID matches 1 if score @s _ matches 1000 run function slot:perform/normal/smorker/strong/

## ベル役～リプレイまで
    execute if score @s ResultID matches 2..5 if score @s _ matches 1..600 run function slot:perform/normal/smorker/default/
    execute if score @s ResultID matches 2..5 if score @s _ matches 601..995 run function slot:perform/normal/smorker/middle/
    execute if score @s ResultID matches 2..5 if score @s _ matches 996..1000 run function slot:perform/normal/smorker/strong/

## ルーン役
    execute if score @s ResultID matches 6..11 if score @s _ matches 1..400 run function slot:perform/normal/smorker/default/
    execute if score @s ResultID matches 6..11 if score @s _ matches 401..900 run function slot:perform/normal/smorker/middle/
    execute if score @s ResultID matches 6..11 if score @s _ matches 901..1000 run function slot:perform/normal/smorker/strong/

## ニンゲンヤメマスカ役
    execute if score @s ResultID matches 12 if score @s _ matches 1..50 run function slot:perform/normal/smorker/default/
    execute if score @s ResultID matches 12 if score @s _ matches 51..150 run function slot:perform/normal/smorker/middle/
    execute if score @s ResultID matches 12 if score @s _ matches 151..1000 run function slot:perform/normal/smorker/strong/

