#> slot:is_stanby
#
# スタンバイ中。ただの演出
#
# @within function slot:tick

## レバーが引かれた。結果を決めよう
# 払い出し中でなければ結果を決める
    execute unless score @s InPayout matches 1 \
    if score @s SlotState matches 1 run \
    function slot:reel/result/set_normal

## レバーの状態を変化(レバーが引かれる)
    execute unless entity @s[tag=LeverAnimated] run \
    scoreboard players set @n[tag=slot_lever_display,sort=nearest,distance=..10,type=item_display] SlotTimer 0

## 払い出しが終わり次第、ボタンを光らせる
    execute if score @s InPayout matches 1 run return fail

    execute as @e[tag=slot_button_display,sort=nearest,distance=..10,limit=3,type=item_display] run \
    data modify entity @s item.components."minecraft:custom_model_data".strings set value ["ready"]

    execute as @e[tag=slot_button,sort=nearest,distance=..10,limit=3,type=interaction] run \
    tag @s add ready

## 20面ドラムの回転リセット（見た目のみ。ドラム未導入なら何もしない）
# slot:reset（前回ゲーム終了時）ではなく実際に回転が始まる直前のここで行うことで、
# 前回の減速→着地アニメが完了するまでの時間（レバーが引かれるまでの間）を確保する
    function slot:reel/drum/spin/reset

## SlotState=3 回転中にする
    scoreboard players set @s SlotState 3