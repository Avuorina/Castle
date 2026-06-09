#> slot:money/depo/declare
#
# 検証
#
# @within function slot:money/depo/

## 10000円超えるか
    scoreboard players operation $AFMoney _ = @s Invest
    scoreboard players operation $AFMoney _ += $Money _

## 入金可か否か
    #execute as @n[tag=slot_machine] run function slot:money/check

## DEBUG
    #tellraw @a [{"text":"$Money: ","color":"white"},{"score":{"name":"$Money","objective":"_"},"color":"white"},{"text":"$AFMoney: ","color":"white"},{"score":{"name":"$AFMoney","objective":"_"},"color":"white"}]

## 検証
    execute if score $AFMoney _ matches 10001.. if score @s Invest matches ..9000 run return run function slot:money/depo/only_1000
    execute if score $AFMoney _ matches 10001.. run return run function slot:money/depo/cannot
