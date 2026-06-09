#> slot:money/depo/deposit
#
# 入金処理
#
# @within function slot:money/depo/

## スロットに入金
    scoreboard players operation @s Invest += $Money _

## 入金可か否か
    function slot:money/check

## 更新する
    function slot:money/update