#> slot:lever/tick
#
# レバー（interaction）のクリック検知（毎tick、全slot_leverに対して実行）
# 台の状態に応じてレバー or ボタンとして振り分ける
#
# @within function main:tick

## クリックされていなければスキップ
    execute unless data entity @s interaction run return 0

## 最寄りのスロット台を確認
    # 待機中（SlotState=0）→ レバーとして機能（スピン開始）
        execute as @n[type=armor_stand,tag=slot_machine,distance=..3] if score @s SlotState matches 0 run function slot:lever/pull

    # 回転中（SlotState=1）→ ボタンとして機能（リール停止）
        execute as @n[type=armor_stand,tag=slot_machine,distance=..3] if score @s SlotState matches 1 run function slot:button/press

## クリックデータをリセット
    data remove entity @s interaction
    data remove entity @s attack
