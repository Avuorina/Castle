#> slot:reel/update/
#
# 回転中のリールのCMD値を更新する（armor_standとして実行）
# ストリップ配列の位置を進めてシンボルを取得
#
# @within function slot:reel/tick

## 各リールの位置を進める（0〜19をサイクル）
    scoreboard players add @s[scores={SlotPos_L=..20}] SlotPos_L 1
    scoreboard players add @s[scores={SlotPos_C=..20}] SlotPos_C 1
    scoreboard players add @s[scores={SlotPos_R=..20}] SlotPos_R 1

## 位置をstorageに書き込み（マクロ用）
# 先に上を選択し、その後＋１してその下のリールに反映させる
# 左リール
    # pos_l_upに現在の値を記入
    execute if score @s SlotPos_L matches 20.. run scoreboard players set @s SlotPos_L 0
    execute store result storage slot:temp pos.left.up int 1 run scoreboard players get @s SlotPos_L
    # pos_l_midに現在の値を記入
    scoreboard players add @s SlotPos_L 1
    execute if score @s SlotPos_L matches 20.. run scoreboard players set @s SlotPos_L 0
    execute store result storage slot:temp pos.left.mid int 1 run scoreboard players get @s SlotPos_L
    # pos_l_downに現在の値を記入
    scoreboard players add @s SlotPos_L 1
    execute if score @s SlotPos_L matches 20.. run scoreboard players set @s SlotPos_L 0
    execute store result storage slot:temp pos.left.down int 1 run scoreboard players get @s SlotPos_L

# 中リール
    # pos_c_upに現在の値を代入
    execute if score @s SlotPos_C matches 20.. run scoreboard players set @s SlotPos_C 0
    execute store result storage slot:temp pos.center.up int 1 run scoreboard players get @s SlotPos_C
    # pos_c_midに現在の値を代入
    scoreboard players add @s SlotPos_C 1
    execute if score @s SlotPos_C matches 20.. run scoreboard players set @s SlotPos_C 0
    execute store result storage slot:temp pos.center.mid int 1 run scoreboard players get @s SlotPos_C
    # pos_c_downに現在の値を代入
    scoreboard players add @s SlotPos_C 1
    execute if score @s SlotPos_C matches 20.. run scoreboard players set @s SlotPos_C 0
    execute store result storage slot:temp pos.center.down int 1 run scoreboard players get @s SlotPos_C

# 右リール
    # pos_r_upに現在の値を代入
    execute if score @s SlotPos_R matches 20.. run scoreboard players set @s SlotPos_R 0
    execute store result storage slot:temp pos.right.up int 1 run scoreboard players get @s SlotPos_R
    # pos_r_midに現在の値を代入
    scoreboard players add @s SlotPos_R 1
    execute if score @s SlotPos_R matches 20.. run scoreboard players set @s SlotPos_R 0
    execute store result storage slot:temp pos.right.mid int 1 run scoreboard players get @s SlotPos_R
    # pos_r_downに現在の値を代入
    scoreboard players add @s SlotPos_R 1
    execute if score @s SlotPos_R matches 20.. run scoreboard players set @s SlotPos_R 0
    execute store result storage slot:temp pos.right.down int 1 run scoreboard players get @s SlotPos_R

## ストリップ配列から現在位置のシンボルを取得
    function slot:reel/update/lookup_l with storage slot:temp pos.left
    function slot:reel/update/lookup_c with storage slot:temp pos.center
    function slot:reel/update/lookup_r with storage slot:temp pos.right

## 取得したシンボルでitem_displayを更新
    execute as @n[type=item_display,tag=slot_reel_L_up] run function slot:reel/update/left with storage slot:temp reel.left
    execute as @n[type=item_display,tag=slot_reel_C_up] run function slot:reel/update/center with storage slot:temp reel.center
    execute as @n[type=item_display,tag=slot_reel_R_up] run function slot:reel/update/right with storage slot:temp reel.right

## スコアを戻す
    execute if score @s SlotPos_L matches 20.. run scoreboard players set @s SlotPos_L -1
    execute if score @s SlotPos_C matches 20.. run scoreboard players set @s SlotPos_C -1
    execute if score @s SlotPos_R matches 20.. run scoreboard players set @s SlotPos_R -1

## ストレージをクリア
    data remove storage slot:temp pos
    data remove storage slot:temp reel
