#> slot:install/spawn_parts
#
# armor_standとして実行され、^ ^ ^ でリール＆レバーを召喚する
#
# @within function slot:install/

## SlotStateを0(待機中)にする
    scoreboard players set @s SlotState 0

## リール（item_display） — ASから見て左/中/右
    summon item_display ^-0.5 ^1.75 ^-0.9 {Tags:["slot_reel","slot_reel_L_up","reel_up","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}},item_display:"fixed"}
    summon item_display ^0 ^1.75 ^-0.9 {Tags:["slot_reel","slot_reel_C_up","reel_up","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}},item_display:"fixed"}
    summon item_display ^0.5 ^1.75 ^-0.9 {Tags:["slot_reel","slot_reel_R_up","reel_up","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}},item_display:"fixed"}
    summon item_display ^-0.5 ^1.5 ^-0.9 {Tags:["slot_reel","slot_reel_L_mid","reel_mid","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}},item_display:"fixed"}
    summon item_display ^0 ^1.5 ^-0.9 {Tags:["slot_reel","slot_reel_C_mid","reel_mid","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}},item_display:"fixed"}
    summon item_display ^0.5 ^1.5 ^-0.9 {Tags:["slot_reel","slot_reel_R_mid","reel_mid","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}},item_display:"fixed"}
    summon item_display ^-0.5 ^1.25 ^-0.9 {Tags:["slot_reel","slot_reel_L_down","reel_down","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}},item_display:"fixed"}
    summon item_display ^0 ^1.25 ^-0.9 {Tags:["slot_reel","slot_reel_C_down","reel_down","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}},item_display:"fixed"}
    summon item_display ^0.5 ^1.25 ^-0.9 {Tags:["slot_reel","slot_reel_R_down","reel_down","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}},item_display:"fixed"}
    # リール裏背景
    summon block_display ^-0.875 ^1 ^-0.95 {Tags:["slot_reel_background","slot_new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.75f,0.9f,0.01f]},block_state:{Name:"minecraft:black_stained_glass"}}
    
        

## ボタン (item_display)  - ASから見て左/中/右
    summon interaction ^-0.5 ^0 ^0.01 {Tags:["slot_button","button_L","slot_new"],width:0.5f,height:1f,response:true}
    summon interaction ^0 ^0 ^0.01 {Tags:["slot_button","button_C","slot_new"],width:0.5f,height:1f,response:true}
    summon interaction ^0.5 ^0 ^0.01 {Tags:["slot_button","button_R","slot_new"],width:0.5f,height:1f,response:true}
    summon item_display ^-0.5 ^0.5 ^0.01 {Tags:["slot_button_display","button_L","slot_new"],item:{id:"minecraft:string",count:1,components:{"minecraft:custom_model_data":{strings:["stanby"]}}}}
    summon item_display ^0 ^0.5 ^0.01 {Tags:["slot_button_display","button_C","slot_new"],item:{id:"minecraft:string",count:1,components:{"minecraft:custom_model_data":{strings:["stanby"]}}}}
    summon item_display ^0.5 ^0.5 ^0.01 {Tags:["slot_button_display","button_R","slot_new"],item:{id:"minecraft:string",count:1,components:{"minecraft:custom_model_data":{strings:["stanby"]}}}}

## レバー（interaction）
    summon interaction ^-1 ^0 ^0.35 {Tags:["slot_lever","slot_new"],width:0.5f,height:1f,response:true}
    summon item_display ^-1 ^0.5 ^0.25 {Tags:["slot_lever_display","slot_new"],item:{id:"minecraft:lever",count:1,components:{"minecraft:custom_model_data":{strings:["off"]}}}}

## メダル枚数表示
    summon text_display ^0.7 ^0.7 ^0.01 {Tags:["slot_medal_display","slot_medal","slot_new"],shadow:0b,alignment:"right",text:{"score":{"name":"@n[tag=slot_machine,type=armor_stand]","objective":"Medal"}},background:-16777216}

## 右画面
    summon text_display ^1.75 ^1 ^0.25 {Tags:["info_display","slot_new","diagonal"],shadow:0b,alignment:"left",text:{"text":""},background:-16777216}

## ポイント表示
    summon text_display ^-1 ^0.7 ^0.01 {Tags:["point_display","slot_new"],shadow:0b,alignment:"left",text:[{text:"0",bold:true},{text:"pt",bold:false}],background:-16777216}
    summon text_display ^-0.4 ^0.7 ^0.01 {Tags:["plus_point_display","slot_new"],shadow:0b,alignment:"left",text:{"text":""},background:-16777216}

## ステージ
    summon item_display ^0 ^2 ^-0.99 {Tags:["Stage","slot_new"],item:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:custom_model_data":{strings:["normal1"]}}},item_display:"fixed"} 

## ステージ名
    summon text_display ^0 ^1.9 ^-0.98 {Tags:["StageDisplay","slot_new"],shadow:1b,alignment:"center",text:{"text":"aaaaaaaaaa"},background:16777215}

## パーツのRotationをarmor_standと同じにする
    # ASのRotationを一時保存
    data modify storage slot:temp Rotation set from entity @s Rotation
    # 向きをプレイヤーの方向を向くように
    execute as @e[type=item_display,tag=slot_new,distance=..10,sort=nearest] run data modify entity @s Rotation set from storage slot:temp Rotation
    execute as @e[type=text_display,tag=slot_new,distance=..10,sort=nearest] run data modify entity @s Rotation set from storage slot:temp Rotation
    execute as @e[type=interaction,tag=slot_new,distance=..10,sort=nearest] run data modify entity @s Rotation set from storage slot:temp Rotation
    execute as @e[type=block_display,tag=slot_new,distance=..10,sort=nearest] run data modify entity @s Rotation set from storage slot:temp Rotation
    # rotationを削除
    execute store result score $Rotation _ run data get entity @s Rotation[0]
    data remove storage slot:temp Rotation

## パーツのScaleを調整
    # ボタンのスケール
    execute as @e[type=item_display,tag=slot_button_display,limit=3,distance=..3,sort=nearest] run data modify entity @s transformation.scale set value [0.5f,0.5f,0.5f]
    # 右画面のスケール
    execute as @n[type=text_display,tag=info_display] run data modify entity @s transformation.scale set value [0.5f,0.5f,0.5f]
    # リールのスケール
    execute as @e[type=item_display,tag=slot_reel,limit=9,distance=..3,sort=nearest] run data modify entity @s transformation.scale set value [0.5f,0.5f,0.5f]

## 右画面を少し左を向くようにする
    scoreboard players add $Rotation _ 45
    execute as @n[type=text_display,tag=info_display,tag=diagonal] store result entity @s Rotation[0] float 1 run scoreboard players get $Rotation _
    scoreboard players reset $Rotation _