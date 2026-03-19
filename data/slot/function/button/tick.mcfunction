#> slot:button/tick
#
# ボタン（interaction）のクリック検知（毎tick、全slot_buttonに対して実行）
# ※ 現在はレバーと同じinteraction entityを使用。ボタン追加時はここを修正。
#   暫定: レバーを回転中にもう一度クリック → 停止ボタンとして機能
#
# @within function main:tick

## interactionデータがあれば（誰かがクリックした）
    execute if data entity @s interaction run function slot:button/press

## クリックデータをリセット
    data remove entity @s interaction
    data remove entity @s attack
