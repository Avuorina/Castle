#> slot:tick/player
#
# プレイヤーごとのスロット関連tick処理
#
# @within function slot:tick

## 手持ちアイテムのItemIDを取得
    data modify storage slot:context ItemID set from entity @s SelectedItem.components."minecraft:custom_data".ItemID

## 設置ツール
    # ホールド（持っている間プレビューパーティクル表示）
        execute if data storage slot:context {ItemID:"SlotInstall"} run function slot:install/tools/hold
    # 使用（右クリック）
        execute if data storage slot:context {ItemID:"SlotInstall"} if score @s Tools.Using matches 1.. run function slot:install/tools/use

## 撤去ツール
    # ホールド（持っている間パーティクル表示）
        execute if data storage slot:context {ItemID:"SlotUninstall"} run function slot:uninstall/hold
    # 使用（右クリック）
        execute if data storage slot:context {ItemID:"SlotUninstall"} if score @s Tools.Using matches 1 run function slot:uninstall/use


## ストレージをリセット
    data remove storage slot:context ItemID
