#> slot:money/conversion/
#
# お金を預ける
#
# @within advencement player:interact/money_import

## リセット
    advancement revoke @s only player:interact/money_import

## メインハンドのお金を検知する
    execute store result score $Money _ run data get entity @s SelectedItem.components."minecraft:custom_data".yen

## 10000円超えるか
    scoreboard players operation $AFMoney _ = @n[tag=slot_machine,distance=..10] Invest
    scoreboard players operation $AFMoney _ += $Money _

## 入金可か否か
    execute as @n[tag=slot_machine] run function slot:money/check

## 検証
    execute as @n[tag=slot_machine] at @s if entity @s[tag=CanNotInsertMoney] if score $AFMoney _ matches 10001.. unless score $Money _ matches 10000 run tellraw @p {"text":"入金できません","color":"red"}
    execute as @n[tag=slot_machine] if entity @s[tag=CanNotInsertMoney] if score $AFMoney _ matches 10001.. unless score $Money _ matches 10000 run scoreboard players reset $Money _
    execute as @n[tag=slot_machine] if entity @s[tag=CanNotInsertMoney] if score $AFMoney _ matches 10001.. unless score $Money _ matches 10000 run return run scoreboard players reset $AFMoney _

    execute as @n[tag=slot_machine] if entity @s[tag=CanOnlyInsertMoney] at @s if score @n[tag=slot_machine,distance=..10] Invest matches 10000.. if score $Money _ matches 1000..9000 run tellraw @p {"text":"10000札以外を入金してください","color":"red"}
    execute as @n[tag=slot_machine] if entity @s[tag=CanOnlyInsertMoney] if score @n[tag=slot_machine,distance=..10] Invest matches 10000.. if score $Money _ matches 1000..9000 run return run scoreboard players reset $Money _

## プレイヤーのお金を減らす
    execute if score $Money _ matches 10000 run clear @s diamond 1
    execute if score $Money _ matches 1000 run clear @s emerald 1

## プレイヤーのスコアを減らす...必要ある？
    scoreboard players operation @s Yen -= $Money _

## 更新する...必要ある？

## スロットに預ける
    scoreboard players operation @n[tag=slot_machine,distance=..10] Invest += $Money _

## 入金可か否か
    execute as @n[tag=slot_machine] run function slot:money/check

## 更新する
    function slot:money/update

## reset
    scoreboard players reset $Money _
    scoreboard players reset $AFMoney _