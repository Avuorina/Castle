#> slot:is_stanby
#
# スタンバイ中。ただの演出
#
# @within function slot:tick

## レバーが引かれた。結果を決めよう
    # 払い出し中でなければ結果を決める
    execute unless score @s InPayout matches 1 if score @s SlotState matches 1 run function slot:reel/result/set_normal

## レバーの状態を変化(レバーが引かれる)
    execute unless entity @s[tag=LeverAnimated] run scoreboard players set @n[tag=slot_lever_display,sort=nearest,distance=..10,type=item_display] SlotTimer 0

## 払い出しが終わり次第、ボタンを光らせる
    execute if score @s InPayout matches 1 run return fail
    execute as @e[tag=slot_button_display,sort=nearest,distance=..10,limit=3,type=item_display] run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["ready"]
    execute as @e[tag=slot_button,sort=nearest,distance=..10,limit=3,type=interaction] run tag @s add ready

## SlotState=3 回転中にする
    scoreboard players set @s SlotState 3