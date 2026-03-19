#> slot:install/spawn_parts
#
# armor_standとして実行され、^ ^ ^ でリール＆レバーを召喚する
#
# @within function slot:install/

## SlotStateを0(待機中)にする
    scoreboard players set @s SlotState 0

## リール（item_display） — ASから見て左/中/右
    summon item_display ^-1 ^1.5 ^0 {Tags:["slot_reel","slot_reel_L","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}}}
    summon item_display ^0 ^1.5 ^0 {Tags:["slot_reel","slot_reel_C","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}}}
    summon item_display ^1 ^1.5 ^0 {Tags:["slot_reel","slot_reel_R","slot_new"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["1"]}}}}

## レバー（interaction）
    summon interaction ^-1.5 ^-0.5 ^0 {Tags:["slot_lever","slot_new"],width:0.5f,height:1f,response:true}
    summon item_display ^-1.5 ^ ^0 {Tags:["slot_lever_display","slot_new"],item:{id:"minecraft:lever",count:1,components:{"minecraft:custom_model_data":{strings:["slot"]}}}}

## パーツのRotationをarmor_standと同じにする
    data modify storage slot:temp Rotation set from entity @s Rotation
    execute as @e[type=item_display,tag=slot_new,distance=..3] run data modify entity @s Rotation set from storage slot:temp Rotation
    data remove storage slot:temp Rotation
    data modify entity @n[type=item_display,tag=slot_lever_display,tag=slot_new,distance=..3] transformation.left_rotation[0] set value 90f
