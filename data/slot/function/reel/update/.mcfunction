#> slot:reel/update/
#
# 回転中のリールのCMD値を更新する（armor_standとして実行）
# ストリップ配列の位置を進めてシンボルを取得
#
# @within function slot:reel/tick

## スロットの値を決める
    execute if entity @s[tag=ReelingLeft] run function slot:reel/update/left/set
    execute if entity @s[tag=ReelingCenter] run function slot:reel/update/center/set
    execute if entity @s[tag=ReelingRight] run function slot:reel/update/right/set

## ストリップ配列から現在位置のシンボルを取得
    execute if entity @s[tag=ReelingLeft] run function slot:reel/update/left/lookup with storage slot:temp pos.left
    execute if entity @s[tag=ReelingCenter] run function slot:reel/update/center/lookup with storage slot:temp pos.center
    execute if entity @s[tag=ReelingRight] run function slot:reel/update/right/lookup with storage slot:temp pos.right

## 取得したシンボルでitem_displayを更新
    execute if entity @s[tag=ReelingLeft] as @n[type=item_display,tag=slot_reel_L_up] run function slot:reel/update/left/ with storage slot:temp reel.left
    execute if entity @s[tag=ReelingCenter] as @n[type=item_display,tag=slot_reel_C_up] run function slot:reel/update/center/ with storage slot:temp reel.center
    execute if entity @s[tag=ReelingRight] as @n[type=item_display,tag=slot_reel_R_up] run function slot:reel/update/right/ with storage slot:temp reel.right

## スコアを戻す( 8 9 10 > 7 8 9 )
    execute if entity @s[tag=ReelingRight] run scoreboard players remove @s SlotPos_L 3
    execute if entity @s[tag=ReelingRight] run scoreboard players remove @s SlotPos_C 3
    execute if entity @s[tag=ReelingRight] run scoreboard players remove @s SlotPos_R 3
    # マイナス値になったら19から戻す
    execute if entity @s[tag=ReelingRight] if score @s SlotPos_L matches ..-1 run scoreboard players add @s SlotPos_L 20
    execute if entity @s[tag=ReelingRight] if score @s SlotPos_C matches ..-1 run scoreboard players add @s SlotPos_C 20
    execute if entity @s[tag=ReelingRight] if score @s SlotPos_R matches ..-1 run scoreboard players add @s SlotPos_R 20
