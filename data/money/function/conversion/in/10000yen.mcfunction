#> money:conversion/in/10000yen
#
# 10000円札を投入する
#
# @within function money:conversion/in

## 10000円札を投入する
    clear @s diamond 1
    scoreboard players add @n[tag=slot_machine,type=armor_stand] Invest 10000
    scoreboard players remove @s Yen 10000
    function money:detect

    playsound minecraft:block.note_block.bass player @a ~ ~ ~ 1 0.5