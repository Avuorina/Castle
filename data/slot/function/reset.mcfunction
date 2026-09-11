#> slot:reset
#
# RESET
#
# @public
## RESET 
    scoreboard players reset @s SlotTick
    #scoreboard players reset @s SlotPos_L
    #scoreboard players reset @s SlotPos_C
    #scoreboard players reset @s SlotPos_R
    scoreboard players reset @s Result_L
    scoreboard players reset @s Result_C
    scoreboard players reset @s Result_R
    #scoreboard players reset @s ResultID
    scoreboard players reset @s ButtonState
    scoreboard players set @s LazyState 0
    tag @s add ReelingLeft
    tag @s add ReelingCenter
    tag @s add ReelingRight
    tag @s remove LeverAnimated

## 演出リセット
    function slot:perform/dispatch/reset

## 20面ドラムの回転リセット（見た目のみ。ドラム未導入なら何もしない）
    function slot:reel/drum/spin/reset
