#> main:load
#
# おなじみ
#
# @public

## Scoreboards
    scoreboard objectives add _ dummy "計算用"
    scoreboard objectives add Stats dummy "統計"
    scoreboard objectives add Yen dummy "所持金"
    scoreboard objectives add xxx_yen dummy "100円玉"
    scoreboard objectives add xxxx_yen dummy "1000円札"
    scoreboard objectives add xxxxx_yen dummy "10000円札"
    scoreboard objectives add Medal dummy "メダル"
    scoreboard objectives add Payout dummy "払い出し"
    scoreboard objectives add Cnt dummy "カウント"
    scoreboard objectives add Const dummy "定数"
    scoreboard objectives add MoneyDisplay dummy "所持金表示"
    # 検知用
        scoreboard objectives add PickUpDetectDiamond minecraft.picked_up:minecraft.diamond "10000円札を拾った"
        scoreboard objectives add PickUpDetectEmerald minecraft.picked_up:minecraft.emerald "1000円札を拾った"
        scoreboard objectives add PickUpDetectGold_ingot minecraft.picked_up:minecraft.gold_ingot "100円玉を拾った"

## Gamerules
    gamerule spawn_mobs false
    gamerule advance_time false
    gamerule advance_weather false
    gamerule respawn_radius 0

## Others
    time set day
    weather clear

## define
    function main:load/const
    data modify storage global Prefix.INFO set value "§b[I]>§9>§r "
    data modify storage global Prefix.WARN set value "§e[W]>§9>§r "
    data modify storage global Prefix.ERROR set value "§c[E]>§9>§r "
    data modify storage global Prefix.SYSTEM set value "§6[S]>§9>§r "

## DONE!
    tellraw @a [{"storage":global,"nbt":"Prefix.INFO"},{"text":"世界が回る..."}]