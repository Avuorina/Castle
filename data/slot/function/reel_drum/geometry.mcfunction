#> slot:reel/drum/geometry
#
# 20面ドラムリールのジオメトリ定数テーブルを定義する。
# 面k(0〜19)を「現在最前面(k=0)からの相対面index」として、
# 半径0.571429（シンボルscale 0.5に合わせて拡大）・X軸周り18度刻みの
# translation/left_rotationを事前計算して持つ。
# X軸周りの回転にしているのは、実物のスロットリールと同じく縦方向に
# スクロールして見えるようにするため（Y軸回転だと横に振れる見た目になってしまう）。
# 着地位置が必ず18度刻みになる前提なので、動的なsin/cos計算はせずこの20パターンで足りる。
# .mcfunctionは1行1コマンドのため、配列全体を1行で書く必要がある。
#
# @within function main:load

    data modify storage slot:reel_drum geometry set value [{translation:[0.0f,0.0f,0.571429f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},{translation:[0.0f,0.176581f,0.543461f],left_rotation:[-0.156434f,0.0f,0.0f,0.987688f]},{translation:[0.0f,0.335877f,0.462295f],left_rotation:[-0.309017f,0.0f,0.0f,0.951057f]},{translation:[0.0f,0.462295f,0.335877f],left_rotation:[-0.45399f,0.0f,0.0f,0.891007f]},{translation:[0.0f,0.543461f,0.176581f],left_rotation:[-0.587785f,0.0f,0.0f,0.809017f]},{translation:[0.0f,0.571429f,0.0f],left_rotation:[-0.707107f,0.0f,0.0f,0.707107f]},{translation:[0.0f,0.543461f,-0.176581f],left_rotation:[-0.809017f,0.0f,0.0f,0.587785f]},{translation:[0.0f,0.462295f,-0.335877f],left_rotation:[-0.891007f,0.0f,0.0f,0.45399f]},{translation:[0.0f,0.335877f,-0.462295f],left_rotation:[-0.951057f,0.0f,0.0f,0.309017f]},{translation:[0.0f,0.176581f,-0.543461f],left_rotation:[-0.987688f,0.0f,0.0f,0.156434f]},{translation:[0.0f,0.0f,-0.571429f],left_rotation:[-1.0f,0.0f,0.0f,0.0f]},{translation:[0.0f,-0.176581f,-0.543461f],left_rotation:[-0.987688f,0.0f,0.0f,-0.156434f]},{translation:[0.0f,-0.335877f,-0.462295f],left_rotation:[-0.951057f,0.0f,0.0f,-0.309017f]},{translation:[0.0f,-0.462295f,-0.335877f],left_rotation:[-0.891007f,0.0f,0.0f,-0.45399f]},{translation:[0.0f,-0.543461f,-0.176581f],left_rotation:[-0.809017f,0.0f,0.0f,-0.587785f]},{translation:[0.0f,-0.571429f,0.0f],left_rotation:[-0.707107f,0.0f,0.0f,-0.707107f]},{translation:[0.0f,-0.543461f,0.176581f],left_rotation:[-0.587785f,0.0f,0.0f,-0.809017f]},{translation:[0.0f,-0.462295f,0.335877f],left_rotation:[-0.45399f,0.0f,0.0f,-0.891007f]},{translation:[0.0f,-0.335877f,0.462295f],left_rotation:[-0.309017f,0.0f,0.0f,-0.951057f]},{translation:[0.0f,-0.176581f,0.543461f],left_rotation:[-0.156434f,0.0f,0.0f,-0.987688f]}]