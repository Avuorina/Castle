#> slot:money/update
#
# お金の表示を更新する
#
# @within function slot:money/conversion/

    data modify entity @n[type=text_display,tag=info_display] text set value [{"text":"投入金額："},{"score":{"name":"@n[tag=slot_machine,type=armor_stand]","objective":"Invest"}},{"text":"円"}]
    data modify entity @n[type=text_display,tag=slot_medal_display] text set value [{"score":{"name":"@n[tag=slot_machine,type=armor_stand]","objective":"Medal"},bold:true},{text:"枚",bold:false}]