#> slot:uninstall/kill
#
# スロット台（armor_stand）として実行され、周辺の関連エンティティを全てkillする
#
# @within function slot:uninstall/use

# OhMyDatのストレージを解放
    function #oh_my_dat:please
    function #oh_my_dat:release

# 周辺のリール（item_display）とレバー（interaction）をkill
    execute at @s run kill @e[type=item_display,tag=slot_reel,distance=..3]
    execute at @s run kill @e[type=interaction,tag=slot_lever,distance=..3]
    execute at @s run kill @e[type=item_display,tag=slot_lever_display,distance=..3]
    execute at @s run kill @e[type=interaction,tag=slot_button,distance=..3]
    execute at @s run kill @e[type=item_display,tag=slot_button_display,distance=..3]
    execute at @s run kill @e[type=text_display,tag=slot_medal,distance=..3]
    execute at @s run kill @e[type=text_display,tag=info_display,distance=..3]
    execute at @s run kill @e[type=interaction,tag=slot_new,distance=..3]

# エフェクト
    execute at @s run particle minecraft:dust{color:[1.0,0.2,0.2],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 20

# 台本体（自分自身）をkill
    kill @s
