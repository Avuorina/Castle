#> slot:tick/machine
#
# slot_machine（armor_stand）ごとの毎tick状態処理。
# 以前は slot:tick/ 内で同じ slot_machine セレクタを
# 状態ごとに別々にスキャンしていたものを 1 パスに統合し、
# 各処理をスコアで分岐する（エンティティスキャン回数を削減）。
#
# @within function slot:tick/

## 回転！
# SlotState=3 回転中
    execute if score @s SlotState matches 3 run \
    function slot:reel/tick

## 結果を表示
# ButtonStateを1>2>3でリールストップ
    execute if score @s SlotState matches 3 \
    if score @s ButtonState matches 3 run \
    function slot:reel/result/result_normal

## 払い出し
    execute if score @s InPayout matches 1 run \
    function slot:money/payout/tick

## ポイント加算
    execute if score @s InPointIn matches 1 run \
    function slot:point/tick
