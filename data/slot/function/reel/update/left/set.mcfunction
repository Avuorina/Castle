#> slot:reel/update/left/set
#
# マクロ: 左リールのCMD値を設定する
#
# @within function slot:reel/update/
#         function api:slot/roll/left

## 位置をstorageに書き込み（マクロ用）
# 先に上を選択し、その後＋１してその下のリールに反映させる
    # pos_l_upに現在の値を記入
    execute if score @s SlotPos_L matches 20.. run scoreboard players set @s SlotPos_L 0
    execute store result storage slot:temp pos.left.up int 1 run scoreboard players get @s SlotPos_L
    # pos_l_midに現在の値を記入
    scoreboard players add @s SlotPos_L 1
    execute if score @s SlotPos_L matches 20.. run scoreboard players set @s SlotPos_L 0
    execute store result storage slot:temp pos.left.mid int 1 run scoreboard players get @s SlotPos_L
    scoreboard players operation @s Reel_L = @s SlotPos_L

    # pos_l_downに現在の値を記入
    scoreboard players add @s SlotPos_L 1
    execute if score @s SlotPos_L matches 20.. run scoreboard players set @s SlotPos_L 0
    execute store result storage slot:temp pos.left.down int 1 run scoreboard players get @s SlotPos_L
