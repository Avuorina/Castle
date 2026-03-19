#> slot:install/
#
# スロットのセットアップ
#
# @public

## 検証
    execute unless entity @s run tellraw @a [{"storage":global,"nbt":"Prefix.ERROR"},{"text":"実行者が指定されていません。"}]
    execute unless entity @s run return fail

## プレイヤーの向いてる方向を検知
    function api:player/direction

## 方向に応じた台本体（armor_stand）の設置
    execute if score @s Direction matches 0 run summon armor_stand ~ ~ ~1 {Tags:["slot_machine","slot_new"],Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[0,0f]}
    execute if score @s Direction matches 90 run summon armor_stand ~1 ~ ~ {Tags:["slot_machine","slot_new"],Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[90,0f]}
    execute if score @s Direction matches -90 run summon armor_stand ~-1 ~ ~ {Tags:["slot_machine","slot_new"],Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[270,0f]}
    execute if score @s Direction matches 180 run summon armor_stand ~ ~ ~-1 {Tags:["slot_machine","slot_new"],Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[180,0f]}

## armor_standの位置で、リール＆レバーを ^ ^ ^ で召喚
    execute as @n[type=armor_stand,tag=slot_new,limit=1] at @s run function slot:install/place_parts

## 設置した台の初期化（OhMyDat）
    execute as @n[type=armor_stand,tag=slot_machine,tag=slot_new,limit=1] run function slot:install/init

## 完了メッセージ
    tellraw @s [{"storage":global,"nbt":"Prefix.INFO"},{"text":"スロット台を設置しました。"}]