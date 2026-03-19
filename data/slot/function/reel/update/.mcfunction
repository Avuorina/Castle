#> slot:reel/update/
#
# 回転中のリールのCMD値を更新する（armor_standとして実行）
# ストリップ配列の位置を進めてシンボルを取得
#
# @within function slot:reel/tick

## 各リールの位置を進める（0〜19をサイクル）
    execute store result score @s SlotPos_L run random value 0..19
    execute store result score @s SlotPos_C run random value 0..19
    execute store result score @s SlotPos_R run random value 0..19

## 位置をstorageに書き込み（マクロ用）
    execute store result storage slot:temp pos_l int 1 run scoreboard players get @s SlotPos_L
    execute store result storage slot:temp pos_c int 1 run scoreboard players get @s SlotPos_C
    execute store result storage slot:temp pos_r int 1 run scoreboard players get @s SlotPos_R

## ストリップ配列から現在位置のシンボルを取得
    function slot:reel/update/lookup_l with storage slot:temp
    function slot:reel/update/lookup_c with storage slot:temp
    function slot:reel/update/lookup_r with storage slot:temp

## 取得したシンボルでitem_displayを更新
    execute as @e[type=item_display,tag=slot_reel_L,distance=..3] run function slot:reel/update/left with storage slot:temp
    execute as @e[type=item_display,tag=slot_reel_C,distance=..3] run function slot:reel/update/center with storage slot:temp
    execute as @e[type=item_display,tag=slot_reel_R,distance=..3] run function slot:reel/update/right with storage slot:temp

## ストレージをクリア
    data remove storage slot:temp pos_l
    data remove storage slot:temp pos_c
    data remove storage slot:temp pos_r
