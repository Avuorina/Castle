#> slot:uninstall/use
#
# 撤去ツールを右クリックした時：最寄りのスロット台一式をkill
#
# @within function (tick処理から呼び出し)

# 最寄りのスロット台（armor_stand）を特定
    execute as @n[type=armor_stand,tag=slot_machine,distance=..10] run function slot:uninstall/kill

# サウンド＆メッセージ
    playsound minecraft:block.anvil.destroy player @s ~ ~ ~ 0.7 1
    tellraw @s [{"storage":global,"nbt":"Prefix.INFO"},{"text":"スロット台を撤去しました。"}]

# RESET
    scoreboard players reset @s Tools.Using
