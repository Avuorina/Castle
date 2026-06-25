#> slot:reel/result/symbol/ningen/
#
# ニンゲンヤメマスカ
#
# @within function slot:reel/result/set

## 統計に足す
    function api:slot/get_player
    execute as @a[tag=linked_player] run scoreboard players add @s Bar 1
    tag @a remove linked_player

## 結果ID ニンゲンヤメマスカ = 12
    scoreboard players set @s ResultID 12
