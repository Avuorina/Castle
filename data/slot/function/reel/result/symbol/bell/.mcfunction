#> slot:reel/result/symbol/bell/
#
# ベルが揃った時の処理
#
# @within function slot:reel/result/set

## パターンを選べ！
    execute store result score @s _ run random value 1..100
    execute if score @s _ matches 1..60 run function slot:reel/result/symbol/bell/pattern/straight/
    execute if score @s _ matches 61..100 run function slot:reel/result/symbol/bell/pattern/diagonal/

## 結果ID ベル = 2
    scoreboard players set @s ResultID 2

## 統計に足す
    function api:slot/get_player
    execute as @a[tag=linked_player] run scoreboard players add @s Bel 1
    tag @a remove linked_player

## RESET
    scoreboard players reset @s _
