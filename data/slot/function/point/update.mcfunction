#> slot:point/update
#
# ポイントの表示を更新する
#
# @within function slot:point/tick

    data modify entity @n[type=text_display,tag=point_display] text set value [{"score":{"name":"@n[tag=slot_machine,type=armor_stand]","objective":"Point"},bold:true},{text:"pt",bold:false}]

