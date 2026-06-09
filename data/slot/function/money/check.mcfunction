#> slot:money/check
#
# お金がいれられるかどうか判定し、更新
#
# @within function slot:money/depo/

## リセット
    tag @s remove CanNotInsertMoney
    tag @s remove CanOnlyInsertMoney

## やるぞ。
    execute if score @s Invest matches 10000.. run data modify entity @n[tag=money_importer_display] item.components."minecraft:custom_model_data".strings set value ["cannot"]
    execute if score @s Invest matches 10000.. run tag @s add CanNotInsertMoney

    execute if score @s Invest matches 1000..9000 run data modify entity @n[tag=money_importer_display] item.components."minecraft:custom_model_data".strings set value ["only"]
    execute if score @s Invest matches 1000..9000 run tag @s add CanOnlyInsertMoney

    execute if score @s Invest matches 0 run data modify entity @n[tag=money_importer_display] item.components."minecraft:custom_model_data".strings set value ["can"]