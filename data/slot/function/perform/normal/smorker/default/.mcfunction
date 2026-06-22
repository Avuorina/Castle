#> slot:perform/normal/smorker/default/
#
# 喫煙者大集合...しない！
#
# @within function slot:perform/normal/smorker/default/

## デフォはデフォでもちょっと発展
    execute store result score @s _ run random value 1..2

## みつきのみ
    execute if score @s _ matches 1 run say みつきがきたぞ

## 江尻も来たぞ
    execute if score @s _ matches 2 run scoreboard players set @s PerformCondition 1
