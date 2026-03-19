#> slot:reel/update/right/set
#
# マクロ: 右リールのCMD値を設定する
#
# @within function slot:reel/update/

## 位置をstorageに書き込み（マクロ用）
# 先に上を選択し、その後＋１してその下のリールに反映させる
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