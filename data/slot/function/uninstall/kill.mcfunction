#> slot:uninstall/kill
#
# スロット台（armor_stand）として実行され、周辺の関連エンティティを全てkillする
#
# @within function slot:uninstall/use

# OhMyDatのストレージを解放
    function #oh_my_dat:please
    function #oh_my_dat:release

# 周辺のリール（item_display）とレバー（interaction）をkill
    execute at @s run kill @e[type=item_display,tag=slot_reel,limit=9,sort=nearest]
    execute at @s run kill @n[type=interaction,tag=slot_lever]
    execute at @s run kill @n[type=item_display,tag=slot_lever_display]
    execute at @s run kill @e[type=interaction,tag=slot_button,limit=3,sort=nearest]
    execute at @s run kill @e[type=item_display,tag=slot_button_display,limit=3,sort=nearest]
    execute at @s run kill @n[type=text_display,tag=slot_medal]
    execute at @s run kill @n[type=text_display,tag=info_display]
    execute at @s run kill @n[type=interaction,tag=slot_lazy]
    execute at @s run kill @n[type=text_display,tag=point_display]
    execute at @s run kill @n[type=text_display,tag=plus_point_display]
    execute at @s run kill @n[type=item_display,tag=Stage]
    execute at @s run kill @n[type=text_display,tag=StageDisplay]
    execute at @s run kill @e[type=block_display,tag=slot_reel_background,limit=3,sort=nearest]

# エフェクト
    execute at @s run particle minecraft:dust{color:[1.0,0.2,0.2],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 20

# 台本体（自分自身）をkill
    kill @s
