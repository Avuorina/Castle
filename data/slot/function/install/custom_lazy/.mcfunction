#> slot:install/custom_lazy
#
# LAZY カスタム
#
# @within

## 検証
    execute unless entity @s[tag=slot_machine] run tellraw @a [{"storage":global,"nbt":"Prefix.ERROR"},{"text":"実行者が違います。"}]
    execute unless entity @s[tag=slot_machine] run return fail

## 怠け者はエイムするのもサボるだろう。
    summon interaction ^0.75 ^0 ^-0.74 {width:2f,height:1.75f,Tags:["slot_lazy"]}

## 怠け者カウンター
    scoreboard players set @s LazyState 0

## LazyTagをつける
    tag @s add Lazy