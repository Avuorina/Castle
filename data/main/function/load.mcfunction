#> main:load
#
# おなじみ
#
# @public

## 初回ロード時にスコアボードを発行する
# Versionを上げることで、既に0.0で初期化済みのワールドにも
# 新規追加分（20面ドラム関連オブジェクト等）を再度発行させる
    execute unless data storage global {Version:0.1} run function main:load/once

## 20面ドラムのジオメトリ定数テーブルは毎ロード再生成する
# main:load/once（Versionでゲートされ1度しか実行されない）に置くと、
# このテーブルの値を後で調整してもワールド側に反映されないままになるため
    function slot:reel/drum/geometry

## DONE!
    tellraw @a [{"storage":global,"nbt":"Prefix.INFO"},{"text":"世界が回る..."}]