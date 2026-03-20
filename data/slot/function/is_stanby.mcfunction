#> slot:is_stanby
#
# スタンバイ中。ただの演出
#
# @within function slot:tick

## レバーが引かれた。結果を決めよう
    # 払い出し中でなければ結果を決める
    execute unless score @s InPayout matches 1 if score @s SlotState matches 1 run function slot:reel/result/set_normal

## レバーの状態を変化(レバーが引かれる)
    execute unless entity @s[tag=LeverAnimated] run scoreboard players set @n[type=item_display,tag=slot_lever_display,distance=..3] SlotTimer 0

## 払い出しが終わり次第、ボタンを光らせる
    execute if score @s InPayout matches 1 run return fail
    execute as @e[type=item_display,tag=slot_button_display,distance=..3,limit=3] run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["ready"]
    execute as @e[type=interaction,tag=slot_button,distance=..3,limit=3] run tag @s add ready
    

## SlotState=3 回転中にする
    scoreboard players set @s SlotState 3