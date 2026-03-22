#> slot:point/plus
#
# ポイント加算
#
# @within function slot:reel/result/result_normal

scoreboard players remove @s InPointIn 1
execute if score @s InPointIn matches ..0 run data modify entity @s text set value "" 
# 通常
execute if score @s InPointIn matches 1.. run data modify entity @s text set value [{"text":"+","color":"green"},{"score":{"name":"@s","objective":"PointInDisplay"},bold:true},{text:"pt",bold:false}]
# ポイントが3桁以上
execute if score @n[tag=slot_machine,type=armor_stand] Point matches 100.. if score @s InPointIn matches 1.. run data modify entity @s text set value [{"text":" +","color":"green"},{"score":{"name":"@s","objective":"PointInDisplay"},bold:true},{text:"pt",bold:false}]
# 追加ポイントが2桁以上
execute if score @s PointInDisplay matches 10.. if score @s InPointIn matches 1.. run data modify entity @s text set value [{"text":" +","color":"green"},{"score":{"name":"@s","objective":"PointInDisplay"},bold:true},{text:"pt",bold:false}]
# ポイントが3桁以上で追加ポイントが2桁以上
execute if score @s PointInDisplay matches 10.. if score @n[tag=slot_machine,type=armor_stand] Point matches 100.. if score @s InPointIn matches 1.. run data modify entity @s text set value [{"text":"   +","color":"green"},{"score":{"name":"@s","objective":"PointInDisplay"},bold:true},{text:"pt",bold:false}]
execute if score @s InPointIn matches ..0 run data modify entity @s text set value "" 
execute if score @s InPointIn matches ..0 run scoreboard players reset @s PointInDisplay