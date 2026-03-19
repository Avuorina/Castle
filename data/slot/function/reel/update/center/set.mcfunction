##> slot:reel/update/center/set
#
# マクロ: 中リールのCMD値を設定する
#
# @within function slot:reel/update/

## 位置をstorageに書き込み（マクロ用）
# 先に上を選択し、その後＋１してその下のリールに反映させる
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
