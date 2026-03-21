#> player:point/add
#
# ポイント加算
#
# @within function 

## 一旦保存
    scoreboard players operation $XPLevel _ = @s Point

## 85lvがMAX607らしいぜ
    experience set @s 85 levels

## 割合を検証
    execute store result score $XPp _ run xp query @s points

## 割合との違いを調べる
    scoreboard players operation $XPDif _ = @s PointRatio
    scoreboard players operation $XPDif _ -= $XPp _
    scoreboard players operation $XPDif _ /= $8 Const

## 経験値ポイント操作
    xp set @s 0 points
    scoreboard players operation $XPp _ += $XPDif _
    execute store result storage player: XPbar.Point int 1 run scoreboard players get $XPp _
    function player:point/set_xp_point with storage player: XPbar

# レベル操作
    xp set @s 0 levels
    execute store result storage player: XPbar.Levels int 1 run scoreboard players get $XPLevel _
    function player:point/set_xp_level with storage player: XPbar
    
## ポイントに変化がある分だけ、常時実行
    scoreboard players set @s AddPoint -1
    execute if score $XPDif _ matches 0 run scoreboard players operation @s AddPoint = @s PointRatio

# RESET
    data remove storage player: XPbar
    scoreboard players reset $XPLevel _
    scoreboard players reset $XPp _
    scoreboard players reset $XPDif _