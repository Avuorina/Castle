#> slot:conversion/
#
# お金をメダルに変換する
#
# @within advencement player:interact/money_import

## 1000円 = 46枚にする
    execute as @n[tag=slot_machine,type=armor_stand] run function money:conversion/

## メダル表示更新
    execute as @n[tag=slot_machine,type=armor_stand] run function slot:money/update
