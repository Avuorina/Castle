#> slot:money/conversion/
#
# お金を預ける
#
# @within advencement player:interact/money_import

## リセット
    advancement revoke @s only player:interact/money_import

## メインハンドのお金を検知する
    execute store result score $Money _ run data get entity @s SelectedItem.components."minecraft:custom_data".yen

## リンクと検証
tag @s add InteractedPlayer
    execute as @n[type=interaction,tag=money_importer] \
    if \
    function player:is_interacted \
    at @s \
    if score @n[type=armor_stand,tag=slot_machine] SlotState matches 0 run \
    function player:link/depo
tag @s remove InteractedPlayer

## プレイヤーのお金を減らす
    execute if score $Money _ matches 10000 run clear @s diamond[custom_model_data={strings:["Yen"]}] 1
    execute if score $Money _ matches 1000 run clear @s emerald[custom_model_data={strings:["Yen"]}] 1

## プレイヤーのスコアを減らす...必要ある？
    scoreboard players operation @s Yen -= $Money _

## 更新する...必要ある？

## スロットに預ける
    execute as @e[tag=slot_machine,distance=..10] if score @s SlotID = $Temp SlotID at @s run function slot:money/depo/deposit

## reset23
    scoreboard players reset $Money _
    scoreboard players reset $AFMoney _
    scoreboard players reset $Temp SlotID