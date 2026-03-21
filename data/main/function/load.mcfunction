#> main:load
#
# おなじみ
#
# @public

## Scoreboards
    scoreboard objectives add _ dummy "計算用"
    scoreboard objectives add Stats dummy "統計"
    # お金
    scoreboard objectives add Yen dummy "所持金"
    scoreboard objectives add xxx_yen dummy "100円玉"
    scoreboard objectives add xxxx_yen dummy "1000円札"
    scoreboard objectives add xxxxx_yen dummy "10000円札"
    scoreboard objectives add MoneyDisplay dummy "所持金表示"
    scoreboard objectives add Invest dummy "投資額"
    # スロットシステム
    scoreboard objectives add Medal dummy "メダル"
    scoreboard objectives add Payout dummy "払い出し"
    scoreboard objectives add InPayout dummy "払い出し中"
    scoreboard objectives add Cnt dummy "カウント"
    scoreboard objectives add Const dummy "定数"
    scoreboard objectives add SlotID dummy "スロットID"
    scoreboard objectives add SlotState dummy "スロット状態"
    scoreboard objectives add Result_L dummy "左リール確定"
    scoreboard objectives add Result_C dummy "中リール確定"
    scoreboard objectives add Result_R dummy "右リール確定"
    scoreboard objectives add SlotTimer dummy "スロットタイマー"
    scoreboard objectives add Setting dummy "設定"
    scoreboard objectives add SlotTick dummy "スロットティック"
    scoreboard objectives add SlotCmd dummy "スロットCMD"
    scoreboard objectives add SlotStopped dummy "スロット停止数"
    scoreboard objectives add SlotPos_L dummy "左リール位置"
    scoreboard objectives add SlotPos_C dummy "中リール位置"
    scoreboard objectives add SlotPos_R dummy "右リール位置"
    scoreboard objectives add Reel dummy "リール"
    scoreboard objectives add ResultID dummy "結果"
    scoreboard objectives add ButtonState dummy "ボタン状態"
    scoreboard objectives add Point dummy "ポイント"
    
    # 未分類
    scoreboard objectives add Direction dummy "方向"
    # 検知用
    scoreboard objectives add PickUpDetectDiamond minecraft.picked_up:minecraft.diamond "10000円札を拾った"
    scoreboard objectives add PickUpDetectEmerald minecraft.picked_up:minecraft.emerald "1000円札を拾った"
    scoreboard objectives add PickUpDetectGold_ingot minecraft.picked_up:minecraft.gold_ingot "100円玉を拾った"
    scoreboard objectives add Tools.Using dummy "ツール使用中"

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
    function slot:reel/strip
    data modify storage global Prefix.INFO set value "§b[I]>§9>§r "
    data modify storage global Prefix.WARN set value "§e[W]>§9>§r "
    data modify storage global Prefix.ERROR set value "§c[E]>§9>§r "
    data modify storage global Prefix.SYSTEM set value "§6[S]>§9>§r "

## DONE!
    tellraw @a [{"storage":global,"nbt":"Prefix.INFO"},{"text":"世界が回る..."}]