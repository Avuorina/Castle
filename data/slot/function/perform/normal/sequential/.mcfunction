#> slot:perform/normal/Sequential/
#
# 連続演出。ショーコの独立宣言みたいな。成功すると発展
#
# @within function slot:reel/result/result_normal

## 成功/失敗
# 成功
    execute if score @s ResultID matches 1 run \
    tag @s add SeqSuccess
    execute if score @s ResultID matches 2.. run \
    tag @s add SeqFail

## 連続演出の抽選
    execute store result score @s _ run random value 1..100

## 駐車予告
    execute if score @s _ matches 1..100 run \
    function slot:perform/normal/sequential/parking/
    #execute if score @s _ matches 61..90 run\

    #execute if score @s _ matches 91..100 run
