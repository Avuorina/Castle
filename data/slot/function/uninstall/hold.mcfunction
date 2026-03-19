#> slot:uninstall/hold
#
# 撤去ツールを持っている間、スロットエンティティの上にパーティクルを表示
#
# @within function (tick処理から呼び出し)

# 自分だけに見えるようにタグ付け
    tag @s add slot_user

# スロット台（armor_stand）の上にパーティクル
    execute as @e[type=armor_stand,tag=slot_machine,distance=..10] at @s run particle electric_spark ~ ~1.5 ~ 0 0 0 0 3 force @a[tag=slot_user]

# リール（item_display）の上にパーティクル
    execute as @e[type=item_display,tag=slot_reel,distance=..10] at @s run particle wax_on ~ ~0.5 ~ 0 0 0 0 1 force @a[tag=slot_user]

# レバー（interaction）の上にパーティクル
    execute as @e[type=interaction,tag=slot_lever,distance=..10] at @s run particle end_rod ~ ~1 ~ 0 0 0 0 1 force @a[tag=slot_user]

# ボタン（interaction）の上にパーティクル
    execute as @e[type=interaction,tag=slot_button,distance=..10] at @s run particle end_rod ~ ~1 ~ 0 0 0 0 1 force @a[tag=slot_user]

# リセット
    tag @s remove slot_user
