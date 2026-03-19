#> slot:is_stanby
#
# スタンバイ中。ただの演出
#
# @within function slot:tick

## レバーが引かれた。結果を決めよう
    #TODO

## レバーの状態を変化(レバーが引かれる)
    data modify entity @n[type=item_display,tag=slot_lever_display,distance=..3] item.components."minecraft:custom_model_data".strings set value ["on"]
    execute if score @s SlotTick matches 10.. run data modify entity @n[type=item_display,tag=slot_lever_display,distance=..3] item.components."minecraft:custom_model_data".strings set value ["off"]
## １秒ぐらいスタンバイ
    scoreboard players add @s SlotTick 1
    execute if score @s SlotTick matches 20 as @e[type=item_display,tag=slot_button_display,distance=..3,limit=3] run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["ready"]
    execute if score @s SlotTick matches 20 run scoreboard players set @s SlotState 2