#> slot:uninstall/custom_lazy
#
# 削除
#
# @public

## 検証
    execute unless entity @s[tag=slot_machine] run tellraw @a [{"storage":global,"nbt":"Prefix.ERROR"},{"text":"実行者が違います。"}]
    execute unless entity @s[tag=slot_machine] run return fail

## kill
    kill @n[type=interaction,tag=slot_lazy]

## 怠け者カウンター削除
    scoreboard players reset @s LazyState

## タグを消す
    tag @s remove Lazy