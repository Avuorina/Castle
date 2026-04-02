#> slot:money/check
#
# お金がいれられるかどうか判定し、更新
#
# @within function slot:money/depo/

## リセット
    tag @s remove CanNotInsertMoney
    tag @s remove CanOnlyInsertMoney

## やるぞ。
    execute if score $AFMoney _ matches 10000.. if score $Money _ matches 1000.. run data modify entity @n[tag=money_importer_display] item.components."minecraft:custom_model_data".strings set value ["cannot"]
    execute if score $AFMoney _ matches 10000.. if score $Money _ matches 1000 run tag @s add CanNotInsertMoney

    execute if score $AFMoney _ matches 1000..9000 run data modify entity @n[tag=money_importer_display] item.components."minecraft:custom_model_data".strings set value ["only"]
    execute if score $AFMoney _ matches 1000..9000 run tag @s add CanOnlyInsertMoney

    execute if score $AFMoney _ matches 0 run data modify entity @n[tag=money_importer_display] item.components."minecraft:custom_model_data".strings set value ["can"]