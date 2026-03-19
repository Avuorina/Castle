#> slot:reel/stop
#
# リールを1つ停止する（armor_standとして実行）
# slot_stopped の値に応じて左→中→右の順で停止
#
# @within function slot:button/press

## 回転中でなければスキップ
    execute unless score @s SlotState matches 1 run return 0

## 停止数に応じて対象リールを確定値に固定
    # 左リール停止（0番目）
        execute if score @s SlotStopped matches 0 run execute store result storage slot:temp cmd int 1 run scoreboard players get @s Result_L
        execute if score @s SlotStopped matches 0 as @e[type=item_display,tag=slot_reel_L,distance=..3] run function slot:reel/set_cmd with storage slot:temp

    # 中リール停止（1番目）
        execute if score @s SlotStopped matches 1 run execute store result storage slot:temp cmd int 1 run scoreboard players get @s Result_C
        execute if score @s SlotStopped matches 1 as @e[type=item_display,tag=slot_reel_C,distance=..3] run function slot:reel/set_cmd with storage slot:temp

    # 右リール停止（2番目）
        execute if score @s SlotStopped matches 2 run execute store result storage slot:temp cmd int 1 run scoreboard players get @s Result_R
        execute if score @s SlotStopped matches 2 as @e[type=item_display,tag=slot_reel_R,distance=..3] run function slot:reel/set_cmd with storage slot:temp

## 停止カウントを増やす
    scoreboard players add @s SlotStopped 1

## サウンド
    execute at @s run playsound minecraft:block.note_block.bass player @a ~ ~ ~ 0.7 1.5

## 3つ全部停止したら結果判定へ
    execute if score @s SlotStopped matches 3 run function slot:reel/result
