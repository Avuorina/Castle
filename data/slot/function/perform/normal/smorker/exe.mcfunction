#> slot:perform/normal/smorker/exe
#
# 喫煙者大集合、実行
#
# @within function slot:perform/dispatch/on_stop
## 演出の条件をチェック
    execute if score @s ButtonState matches 1 run say 江尻も来たよ
    execute if score @s ButtonState matches 2 run say 上條も来た！
    execute if score @s ButtonState matches 3 run say 田澤も来たぞうおおおお
