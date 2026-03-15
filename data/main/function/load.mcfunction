#> main:load
#
# おなじみ
#
# @public

## Scoreboards
    scoreboard objectives add _ dummy
    scoreboard objectives add Stats dummy
    scoreboard objectives add Yen dummy
    scoreboard objectives add xxx_yen dummy
    scoreboard objectives add xxxx_yen dummy
    scoreboard objectives add xxxxx_yen dummy
    scoreboard objectives add Medal dummy
    scoreboard objectives add Payout dummy
    scoreboard objectives add Cnt dummy
    scoreboard objectives add Const dummy

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