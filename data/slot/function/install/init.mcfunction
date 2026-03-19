#> slot:install/init
#
# 台のOhMyDat初期化（slot_newタグを持つarmor_standとして実行される）
#
# @within function slot:install/install

## 初期リールを設定
    execute store result score @s SlotPos_L run random value 0..19
    execute store result score @s SlotPos_C run random value 0..19
    execute store result score @s SlotPos_R run random value 0..19
    function slot:reel/update/

## slot_newタグを外す（初期化完了）
    tag @s remove slot_new
    execute as @e[type=item_display,tag=slot_new,distance=..3] run tag @s remove slot_new
    execute as @e[type=interaction,tag=slot_new,distance=..3] run tag @s remove slot_new
