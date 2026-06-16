#> slot:tick/
#
#
#
# @within main:tick

## アイテム判別＆ツール処理（プレイヤーごと）
execute as @a at @s run \
function slot:tick/tools

## スロットタイマー
execute as @e[scores={SlotTimer=0..}] at @s run \
scoreboard players add @s SlotTimer 1

## レバーが下げられた！リールスタート
# SlotState=1 レバーが下げられる状態 / SlotState=2 役が決まった状態。どちらも is_stanby へ
execute as @e[type=armor_stand,tag=slot_machine] at @s \
if score @s SlotState matches 1..2 run \
function slot:is_stanby
# レバーアニメーション
execute as @e[type=item_display,tag=slot_lever_display] at @s \
if score @s SlotTimer matches 0.. run \
function slot:parts/lever/animation

## スロット本体の状態処理（回転・結果・払い出し・ポイント）を1パスに統合
execute as @e[type=armor_stand,tag=slot_machine] at @s run \
function slot:tick/machine

## ポイントバー表示
execute as @e[type=text_display,tag=plus_point_display,scores={InPointIn=0..}] run \
function slot:point/plus

## ステージ名表示
execute as @e[type=text_display,tag=StageDisplay,scores={InStageDisplay=0..}] run \
function slot:perform/normal/stage/display/set_empty
