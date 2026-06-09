#> slot:money/conversion/exe
#
# 両替実行
#
# @within function slot:money/conversion/

## 1000円 = 46枚にする
    execute unless score @s Invest matches 1000.. run playsound block.note_block.banjo master @a ~ ~ ~ 1 0.5
    execute unless score @s Invest matches 1000.. run return run tellraw @p {"text":"投入金額が足りません。","color":"red"}

    scoreboard players remove @s Invest 1000
    scoreboard players add @s Medal 46

## メダル表示更新
    function slot:money/update