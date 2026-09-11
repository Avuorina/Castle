#> slot:reel/drum/geometry
#
# 20面ドラムリールのジオメトリ定数テーブルを定義する。
# 面k(0〜19)を「現在最前面(k=0)からの相対面index」として、
# 半径0.4・Y軸周り18度刻みのtranslation/left_rotationを事前計算して持つ。
# 着地位置が必ず18度刻みになる前提なので、動的なsin/cos計算はせずこの20パターンで足りる。
#
# @within function main:load/once

    data modify storage slot:reel_drum geometry set value [
        {translation:[0.0f,0.0f,0.4f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},
        {translation:[0.123607f,0.0f,0.380423f],left_rotation:[0.0f,0.156434f,0.0f,0.987688f]},
        {translation:[0.235114f,0.0f,0.323607f],left_rotation:[0.0f,0.309017f,0.0f,0.951057f]},
        {translation:[0.323607f,0.0f,0.235114f],left_rotation:[0.0f,0.45399f,0.0f,0.891007f]},
        {translation:[0.380423f,0.0f,0.123607f],left_rotation:[0.0f,0.587785f,0.0f,0.809017f]},
        {translation:[0.4f,0.0f,0.0f],left_rotation:[0.0f,0.707107f,0.0f,0.707107f]},
        {translation:[0.380423f,0.0f,-0.123607f],left_rotation:[0.0f,0.809017f,0.0f,0.587785f]},
        {translation:[0.323607f,0.0f,-0.235114f],left_rotation:[0.0f,0.891007f,0.0f,0.45399f]},
        {translation:[0.235114f,0.0f,-0.323607f],left_rotation:[0.0f,0.951057f,0.0f,0.309017f]},
        {translation:[0.123607f,0.0f,-0.380423f],left_rotation:[0.0f,0.987688f,0.0f,0.156434f]},
        {translation:[0.0f,0.0f,-0.4f],left_rotation:[0.0f,1.0f,0.0f,0.0f]},
        {translation:[-0.123607f,0.0f,-0.380423f],left_rotation:[0.0f,0.987688f,0.0f,-0.156434f]},
        {translation:[-0.235114f,0.0f,-0.323607f],left_rotation:[0.0f,0.951057f,0.0f,-0.309017f]},
        {translation:[-0.323607f,0.0f,-0.235114f],left_rotation:[0.0f,0.891007f,0.0f,-0.45399f]},
        {translation:[-0.380423f,0.0f,-0.123607f],left_rotation:[0.0f,0.809017f,0.0f,-0.587785f]},
        {translation:[-0.4f,0.0f,0.0f],left_rotation:[0.0f,0.707107f,0.0f,-0.707107f]},
        {translation:[-0.380423f,0.0f,0.123607f],left_rotation:[0.0f,0.587785f,0.0f,-0.809017f]},
        {translation:[-0.323607f,0.0f,0.235114f],left_rotation:[0.0f,0.45399f,0.0f,-0.891007f]},
        {translation:[-0.235114f,0.0f,0.323607f],left_rotation:[0.0f,0.309017f,0.0f,-0.951057f]},
        {translation:[-0.123607f,0.0f,0.380423f],left_rotation:[0.0f,0.156434f,0.0f,-0.987688f]}
    ]
