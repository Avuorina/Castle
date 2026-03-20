#> slot:install/spawn_parts
#
# armor_standとして実行され、^ ^ ^ でリール＆レバーを召喚する
#
# @within function slot:install/

## SlotStateを0(待機中)にする
    scoreboard players set @s SlotState 0

## リール（item_display） — ASから見て左/中/右
    summon item_display ^0.5 ^2.5 ^0 {Tags:["slot_reel","slot_reel_L_up","reel_up","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}}}
    summon item_display ^1 ^2.5 ^0 {Tags:["slot_reel","slot_reel_C_up","reel_up","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}}}
    summon item_display ^1.5 ^2.5 ^0 {Tags:["slot_reel","slot_reel_R_up","reel_up","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}}}
    summon item_display ^0.5 ^2 ^0 {Tags:["slot_reel","slot_reel_L_mid","reel_mid","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}}}
    summon item_display ^1 ^2 ^0 {Tags:["slot_reel","slot_reel_C_mid","reel_mid","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}}}
    summon item_display ^1.5 ^2 ^0 {Tags:["slot_reel","slot_reel_R_mid","reel_mid","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}}}
    summon item_display ^0.5 ^1.5 ^0 {Tags:["slot_reel","slot_reel_L_down","reel_down","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}}}
    summon item_display ^1 ^1.5 ^0 {Tags:["slot_reel","slot_reel_C_down","reel_down","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}}}
    summon item_display ^1.5 ^1.5 ^0 {Tags:["slot_reel","slot_reel_R_down","reel_down","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}}}

## ボタン (item_display)  - ASから見て左/中/右
    summon interaction ^0.5 ^0 ^0 {Tags:["slot_button","button_L","slot_new"],width:0.5f,height:1f,response:true}
    summon interaction ^1 ^0 ^0 {Tags:["slot_button","button_C","slot_new"],width:0.5f,height:1f,response:true}
    summon interaction ^1.5 ^0 ^0 {Tags:["slot_button","button_R","slot_new"],width:0.5f,height:1f,response:true}
    summon item_display ^0.5 ^0.5 ^0 {Tags:["slot_button_display","button_L","slot_new"],item:{id:"minecraft:string",count:1,components:{"minecraft:custom_model_data":{strings:["stanby"]}}}}
    summon item_display ^1 ^0.5 ^0 {Tags:["slot_button_display","button_C","slot_new"],item:{id:"minecraft:string",count:1,components:{"minecraft:custom_model_data":{strings:["stanby"]}}}}
    summon item_display ^1.5 ^0.5 ^0 {Tags:["slot_button_display","button_R","slot_new"],item:{id:"minecraft:string",count:1,components:{"minecraft:custom_model_data":{strings:["stanby"]}}}}

## レバー（interaction）
    summon interaction ^0 ^0 ^0 {Tags:["slot_lever","slot_new"],width:0.5f,height:1f,response:true}
    summon item_display ^0 ^0.5 ^0 {Tags:["slot_lever_display","slot_new"],item:{id:"minecraft:lever",count:1,components:{"minecraft:custom_model_data":{strings:["off"]}}}}

## メダル枚数表示
    summon text_display ^1.7 ^0.6 ^0 {Tags:["slot_medal_display","slot_medal","slot_new"],shadow:0b,alignment:"right",text:{"score":{"name":"@n[tag=slot_machine,type=armor_stand]","objective":"Medal"}},background:-16777216}

## 右画面
    summon text_display ^2 ^1 ^0.5 {Tags:["info_display","slot_new"],billboard:"vertical",shadow:0b,alignment:"right",text:{"text":""},background:-16777216}

## パーツのRotationをarmor_standと同じにする
    data modify storage slot:temp Rotation set from entity @s Rotation
    execute as @e[type=item_display,tag=slot_new,distance=..3,sort=nearest] run data modify entity @s Rotation set from storage slot:temp Rotation
    execute as @e[type=text_display,tag=slot_new,distance=..3,sort=nearest] run data modify entity @s Rotation set from storage slot:temp Rotation
    data remove storage slot:temp Rotation
    execute as @e[type=item_display,tag=slot_button_display,limit=3,distance=..3,sort=nearest] run data modify entity @s transformation.scale set value [0.5f,0.5f,0.5f]
    execute as @e[type=text_display,tag=info_display,limit=1,sort=nearest] run data modify entity @s transformation.scale set value [0.5f,0.5f,0.5f]
    execute as @e[type=item_display,tag=slot_reel,limit=9,distance=..3,sort=nearest] run data modify entity @s transformation.scale set value [0.5f,0.5f,0.5f]