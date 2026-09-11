#> slot:install/place_parts_drum
#
# 20面ドラムリール(見た目のみの追加演出)を既存のスロット台に追加導入する。
# armor_standとして実行する。既存のリール表示(slot_reel_*)は変更しない。
#
# 使い方: 対象のslot_machine(armor_stand)の位置で
#   execute as @e[type=armor_stand,tag=slot_machine] at @s run function slot:install/place_parts_drum
#
# @public

## 20面ドラムを召喚
    function slot:reel/drum/init/

## 初期状態は停止(0)・面0で待機。実際に回転を始めるのは slot:reset（レバーが引かれた時）から
    scoreboard players set @s ReelDrumState_L 0
    scoreboard players set @s ReelDrumState_C 0
    scoreboard players set @s ReelDrumState_R 0
    scoreboard players set @s ReelDrumSpin_L 0
    scoreboard players set @s ReelDrumSpin_C 0
    scoreboard players set @s ReelDrumSpin_R 0
    scoreboard players set @s ReelDrumTarget_L 0
    scoreboard players set @s ReelDrumTarget_C 0
    scoreboard players set @s ReelDrumTarget_R 0
    scoreboard players set @s ReelDrumTimer_L 0
    scoreboard players set @s ReelDrumTimer_C 0
    scoreboard players set @s ReelDrumTimer_R 0

## ドラムの向きをarmor_standと同じにする（既存のパーツ設置と同じ手法）
    data modify storage slot:temp Rotation set from entity @s Rotation
    execute as @e[tag=reel_drum,distance=..10,sort=nearest] run data modify entity @s Rotation set from storage slot:temp Rotation
    data remove storage slot:temp Rotation
