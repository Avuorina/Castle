#> money:tick
#
# お金の表示
#
# @within main:tick

## money:display
    execute as @a run function money:display

## 金を拾った幸運の持ち主を検知
    execute as @a[scores={PickUpDetectDiamond=1..}] run function money:detect
    execute as @a[scores={PickUpDetectEmerald=1..}] run function money:detect
    execute as @a[scores={PickUpDetectGold_ingot=1..}] run function money:detect