#> main:load
#
# おなじみ
#
# @public

## 初回ロード時にスコアボードを発行する
    execute unless data storage global {Version:0.0} run function main:load/once

## DONE!
    tellraw @a [{"storage":global,"nbt":"Prefix.INFO"},{"text":"世界が回る..."}]