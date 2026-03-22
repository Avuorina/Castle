#> slot:money/pay
#
# お金を支払う
#
# @within function slot:lever/pull

## RESET
    scoreboard players reset @s _

## デバッグ用に常にメダルを3枚与える
    execute if entity @p[team=Debug] run scoreboard players add @s Medal 3

## 支払い能力の有無
    execute unless score @s Medal matches 3.. run tellraw @p {"text":"メダルが足らない！",color:red}
    execute unless score @s Medal matches 3.. run playsound minecraft:block.note_block.bass player @a ~ ~ ~ 1 0.5
    execute unless score @s Medal matches 3.. store success score @s _ run return fail

## 支払い実行
    execute if score @s Medal matches 3.. run scoreboard players remove @s Medal 3

## 反映
    function slot:money/update
