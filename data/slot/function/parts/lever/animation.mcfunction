#> slot:lever/animation
#
# レバーを引いた時のアニメーション
#
# @within function slot:is_stanby

tag @n[tag=slot_machine,type=armor_stand] add LeverAnimated

## レバーを引く
    execute unless score @s SlotTimer matches 10.. run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["on"]

## レバーを戻す
    execute if score @s SlotTimer matches 10.. run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["off"]

## RESET
    execute if score @s SlotTimer matches 10.. run scoreboard players reset @s SlotTimer
