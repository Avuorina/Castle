#> slot:reel/drum/init/right
#
# 右ドラムリールの20面item_displayを召喚する（armor_standとして実行）
# 20体すべて同一座標に召喚し、transformationだけで面ごとの見た目位置を表現する
# （回転時はtransformationの書き換えのみでよく、エンティティのTeleportが不要になる）
#
# @within function slot:reel/drum/init/

## 面0（strip index 0 = シンボル2）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_0"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["2"]}}},item_display:"fixed",transformation:{translation:[0.0f,0.0f,0.4f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_0] run scoreboard players set @s ReelDrumFaceIndex 0

## 面1（strip index 1 = シンボル4）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_1"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["4"]}}},item_display:"fixed",transformation:{translation:[0.123607f,0.0f,0.380423f],left_rotation:[0.0f,0.156434f,0.0f,0.987688f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_1] run scoreboard players set @s ReelDrumFaceIndex 1

## 面2（strip index 2 = シンボル3）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_2"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["3"]}}},item_display:"fixed",transformation:{translation:[0.235114f,0.0f,0.323607f],left_rotation:[0.0f,0.309017f,0.0f,0.951057f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_2] run scoreboard players set @s ReelDrumFaceIndex 2

## 面3（strip index 3 = シンボル7）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_3"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["7"]}}},item_display:"fixed",transformation:{translation:[0.323607f,0.0f,0.235114f],left_rotation:[0.0f,0.45399f,0.0f,0.891007f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_3] run scoreboard players set @s ReelDrumFaceIndex 3

## 面4（strip index 4 = シンボル8）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_4"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["8"]}}},item_display:"fixed",transformation:{translation:[0.380423f,0.0f,0.123607f],left_rotation:[0.0f,0.587785f,0.0f,0.809017f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_4] run scoreboard players set @s ReelDrumFaceIndex 4

## 面5（strip index 5 = シンボル8）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_5"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["8"]}}},item_display:"fixed",transformation:{translation:[0.4f,0.0f,0.0f],left_rotation:[0.0f,0.707107f,0.0f,0.707107f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_5] run scoreboard players set @s ReelDrumFaceIndex 5

## 面6（strip index 6 = シンボル4）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_6"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["4"]}}},item_display:"fixed",transformation:{translation:[0.380423f,0.0f,-0.123607f],left_rotation:[0.0f,0.809017f,0.0f,0.587785f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_6] run scoreboard players set @s ReelDrumFaceIndex 6

## 面7（strip index 7 = シンボル3）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_7"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["3"]}}},item_display:"fixed",transformation:{translation:[0.323607f,0.0f,-0.235114f],left_rotation:[0.0f,0.891007f,0.0f,0.45399f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_7] run scoreboard players set @s ReelDrumFaceIndex 7

## 面8（strip index 8 = シンボル7）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_8"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["7"]}}},item_display:"fixed",transformation:{translation:[0.235114f,0.0f,-0.323607f],left_rotation:[0.0f,0.951057f,0.0f,0.309017f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_8] run scoreboard players set @s ReelDrumFaceIndex 8

## 面9（strip index 9 = シンボル6）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_9"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["6"]}}},item_display:"fixed",transformation:{translation:[0.123607f,0.0f,-0.380423f],left_rotation:[0.0f,0.987688f,0.0f,0.156434f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_9] run scoreboard players set @s ReelDrumFaceIndex 9

## 面10（strip index 10 = シンボル2）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_10"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["2"]}}},item_display:"fixed",transformation:{translation:[0.0f,0.0f,-0.4f],left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_10] run scoreboard players set @s ReelDrumFaceIndex 10

## 面11（strip index 11 = シンボル4）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_11"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["4"]}}},item_display:"fixed",transformation:{translation:[-0.123607f,0.0f,-0.380423f],left_rotation:[0.0f,0.987688f,0.0f,-0.156434f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_11] run scoreboard players set @s ReelDrumFaceIndex 11

## 面12（strip index 12 = シンボル3）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_12"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["3"]}}},item_display:"fixed",transformation:{translation:[-0.235114f,0.0f,-0.323607f],left_rotation:[0.0f,0.951057f,0.0f,-0.309017f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_12] run scoreboard players set @s ReelDrumFaceIndex 12

## 面13（strip index 13 = シンボル7）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_13"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["7"]}}},item_display:"fixed",transformation:{translation:[-0.323607f,0.0f,-0.235114f],left_rotation:[0.0f,0.891007f,0.0f,-0.45399f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_13] run scoreboard players set @s ReelDrumFaceIndex 13

## 面14（strip index 14 = シンボル5）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_14"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["5"]}}},item_display:"fixed",transformation:{translation:[-0.380423f,0.0f,-0.123607f],left_rotation:[0.0f,0.809017f,0.0f,-0.587785f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_14] run scoreboard players set @s ReelDrumFaceIndex 14

## 面15（strip index 15 = シンボル2）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_15"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["2"]}}},item_display:"fixed",transformation:{translation:[-0.4f,0.0f,0.0f],left_rotation:[0.0f,0.707107f,0.0f,-0.707107f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_15] run scoreboard players set @s ReelDrumFaceIndex 15

## 面16（strip index 16 = シンボル4）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_16"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["4"]}}},item_display:"fixed",transformation:{translation:[-0.380423f,0.0f,0.123607f],left_rotation:[0.0f,0.587785f,0.0f,-0.809017f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_16] run scoreboard players set @s ReelDrumFaceIndex 16

## 面17（strip index 17 = シンボル3）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_17"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["3"]}}},item_display:"fixed",transformation:{translation:[-0.323607f,0.0f,0.235114f],left_rotation:[0.0f,0.45399f,0.0f,-0.891007f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_17] run scoreboard players set @s ReelDrumFaceIndex 17

## 面18（strip index 18 = シンボル7）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_18"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["7"]}}},item_display:"fixed",transformation:{translation:[-0.235114f,0.0f,0.323607f],left_rotation:[0.0f,0.309017f,0.0f,-0.951057f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_18] run scoreboard players set @s ReelDrumFaceIndex 18

## 面19（strip index 19 = シンボル1）
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["reel_drum","reel_drum_R","slot_new","face_index_R_19"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}},item_display:"fixed",transformation:{translation:[-0.123607f,0.0f,0.380423f],left_rotation:[0.0f,0.156434f,0.0f,-0.987688f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.35f,0.35f,0.35f]}}
    execute as @e[type=item_display,tag=face_index_R_19] run scoreboard players set @s ReelDrumFaceIndex 19
