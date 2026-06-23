#> slot:reel/result/symbol/replay/
#
# リプレイが揃った時の処理
#
# @within function slot:reel/result/set

## パターンを選べ！
    execute store result score @s _ run random value 1..100
    execute if score @s _ matches 1..40 run function slot:reel/result/symbol/replay/pattern/straight/
    execute if score @s _ matches 41..80 run function slot:reel/result/symbol/replay/pattern/pay_1/
    execute if score @s _ matches 81..100 run function slot:reel/result/symbol/replay/pattern/pay_2/

## 統計に足す
    function api:slot/get_player
    execute as @a[tag=linked_player] run scoreboard players add @s Rep 1
    tag @a remove linked_player

## 結果ID リプレイ = 3 １枚払い出し = 4 ２枚払い出し = 5
    execute if score @s _ matches 1..40 run scoreboard players set @s ResultID 3
    execute if score @s _ matches 41..80 run scoreboard players set @s ResultID 4
    execute if score @s _ matches 81..100 run scoreboard players set @s ResultID 5


## RESET
    scoreboard players reset @s _
