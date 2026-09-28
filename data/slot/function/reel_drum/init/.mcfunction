#> slot:reel_drum/init/
#
# 実際に回転するリールの初期化
#
# @public

## 左・中・右のリールを召喚
    function slot:reel_drum/init/left
    function slot:reel_drum/init/center
    function slot:reel_drum/init/right

## 初期状態を決めるぞ
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
    execute as @e[tag=reel_drum,distance=..2,sort=nearest] run data modify entity @s Rotation set from storage slot:temp Rotation
    data remove storage slot:temp Rotation

## 導入完了。slot_newタグを外す（外し忘れると、後で近くに別の台を設置した際のRotation合わせ処理に今設置したドラムまで巻き込まれてしまう）
    execute as @e[tag=reel_drum,tag=slot_new,distance=..2] run tag @s remove slot_new