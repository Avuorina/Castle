#> api:slot/get_player
#
# 実行者スロットにリンクしているプレイヤーへ一時タグ linked_player を付ける。
# 呼び出し後 @a[tag=linked_player] で対象を選択できる。使い終わったら掃除すること。
#
# @api
# @context @s = SlotID を持つエンティティ(通常 armor_stand slot_machine)

## 検証 (SlotID が設定されているか)
    execute unless score @s SlotID matches -2147483648.. run tellraw @a [{"storage":global,"nbt":"Prefix.ERROR"},{"text":"実行者が SlotID を持っていません。"}]
    execute unless score @s SlotID matches -2147483648.. run return fail

## 旧タグを掃除
    tag @a remove linked_player

## SlotID 一致のプレイヤーにタグ付け
    scoreboard players operation $LinkedSlotID _ = @s SlotID
    execute as @a if score @s SlotID = $LinkedSlotID _ run tag @s add linked_player
    scoreboard players reset $LinkedSlotID _