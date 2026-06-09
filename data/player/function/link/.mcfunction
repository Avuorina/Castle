#> player:link/
#
# プレイヤーとスロットをリンクさせる。(レバーを引くごとに更新)
#
# @within function slot:parts/lever/pull
# @context @s = slot_lever Interaction entity

## スロットのSlotIDを取得
    scoreboard players operation $Temp SlotID = @n[type=armor_stand,tag=slot_machine] SlotID

## 前のリンクを解除 (同じSlotIDを持つプレイヤーがいれば切り離す)
    scoreboard players reset @s SlotID
    execute as @a if score @s SlotID = $Temp SlotID run scoreboard players reset @s SlotID

## Interaction の interaction.player UUID でプレイヤーを確実に特定してSlotIDを代入
    execute on target run scoreboard players operation @s SlotID = $Temp SlotID

## 同じIDのスロットを実行者としてレバースタート
    execute as @e[type=armor_stand,tag=slot_machine] at @s if score @s SlotID = $Temp SlotID run function slot:parts/lever/pull
## RESET
    scoreboard players reset $Temp SlotID
