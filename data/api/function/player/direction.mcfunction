#> api:player/direction
#
# プレイヤーの向いてる方向を検知
#
# @api

## 検証
    execute unless entity @s run tellraw @a [{"storage":global,"nbt":"Prefix.ERROR"},{"text":"実行者が指定されていません。"}]
    execute unless entity @s run return fail

## RESET
    scoreboard players reset @s Direction

## 北
    scoreboard players set @s[y_rotation=135..180] Direction 0
    scoreboard players set @s[y_rotation=-180..-135] Direction 0

## 東
    scoreboard players set @s[y_rotation=-134.9..-45] Direction 90

## 西
    scoreboard players set @s[y_rotation=45..134.9] Direction -90

## 南
    scoreboard players set @s[y_rotation=-44.9..44.9] Direction 180

## ストレージに書き込む
    function #oh_my_dat:please
    execute if score @s Direction matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Direction set value "北"
    execute if score @s Direction matches 90 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Direction set value "東"
    execute if score @s Direction matches -90 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Direction set value "西"
    execute if score @s Direction matches 180 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Direction set value "南"

## 検証
    execute unless score @s Direction matches -180.. run tellraw @a [{"storage":global,"nbt":"Prefix.ERROR"},{"text":"存在しない方向を向いている可能性があります。"}]