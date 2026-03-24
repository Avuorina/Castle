#> slot:install/init
#
# 台のOhMyDat初期化（slot_newタグを持つarmor_standとして実行される）
#
# @within function slot:install/install

## 初期リールを設定
    tag @s add ReelingLeft
    tag @s add ReelingCenter
    tag @s add ReelingRight
    execute store result score @s SlotPos_L run random value 0..19
    execute store result score @s SlotPos_C run random value 0..19
    execute store result score @s SlotPos_R run random value 0..19
    function slot:reel/update/

## ボタン状態を0に
    scoreboard players set @s ButtonState 0

## メダルを初期状態( 0 )に
    scoreboard players set @s Medal 0
    scoreboard players set @s InPayout 0

## 右画面を初期状態に
    scoreboard players set @s Invest 0

## LazyCustomを初期配置
    function slot:install/custom_lazy/

## ID割り振り
    function slot:play/set_id

## 反映
    function slot:money/update

## slot_newタグを外す（初期化完了）
    tag @s remove slot_new
    execute as @e[type=item_display,tag=slot_new,distance=..3] run tag @s remove slot_new
    execute as @e[type=interaction,tag=slot_new,distance=..3] run tag @s remove slot_new
    execute as @e[type=text_display,tag=slot_new,distance=..3] run tag @s remove slot_new
