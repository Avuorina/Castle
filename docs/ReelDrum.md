# 20面リール 垂直回転機構（ReelDrum）

各リールを20枚のシンボル面を持つ正二十角柱ドラムとして描画し、回転→減速→指定シンボルで着地させる見た目専用の追加演出。既存の3枚差し替え式リールイリュージョン（`slot:reel/update/`）や役抽選・払い出しロジックは一切変更していない。両者は完全に独立しており、ドラム未導入の台では新規追加した関数はすべて早期`return`で無害化される。

## 導入方法（オプトイン）

既存の `slot:install/place_parts` では自動導入しない。台に追加したい場合は、その台の `armor_stand`（`slot_machine`タグ）の位置で以下を実行する。

```
execute as @e[type=armor_stand,tag=slot_machine] at @s run function slot:install/place_parts_drum
```

20面 × 3リール = 60体の`item_display`を各リールにつき同一座標へ召喚し、`transformation`（`translation`/`left_rotation`）だけで面ごとの見た目位置を表現する。回転時はエンティティのテレポートを行わず、`transformation`の書き換え＋`interpolation_duration`によるクライアント補間のみで滑らかに見せる。

## ジオメトリ

面数 N=20、間隔角度18度固定。着地位置も必ず18度刻みになるため、動的なsin/cos計算はせず、`slot:reel/drum/geometry`（`main:load`から毎ロード実行）で20パターンの`translation`/`left_rotation`定数テーブルを`slot:reel_drum geometry`ストレージに事前生成している。半径0.4・スケール0.35固定。面を可変にしたくなったらこのテーブルの生成方法を拡張する。

新規スコアボードオブジェクトの発行と`geometry`生成は、既存の`main:load/once`（`storage global Version`で1度きりのゲートがかかっている）ではなく`main:load`から呼ぶようにしている。既に初期化済みのワールドで`main:load/once`が再実行されないままだと、このPRで追加したオブジェクトが存在せず、オプトインinstallerを実行しても不明なオブジェクトエラーになるため。あわせて既存ワールド向けに`Version`のゲート値を`0.0`→`0.1`へ上げ、既存ワールドでも`main:load/once`が一度だけ再実行されるようにしてある。

## スコアボード

すべて`slot_machine`の`armor_stand`が保持する（既存の`SlotPos_L`等と同じ流儀）。

| objective | 意味 |
|---|---|
| `ReelDrumState_{L,C,R}` | 0停止 / 1加速 / 2定速 / 3減速 / 4着地確定 |
| `ReelDrumSpin_{L,C,R}` | 現在の面index(0-19) |
| `ReelDrumSpeed_{L,C,R}` | 1コマ進むまでのtick数（値が小さいほど速い。2=最速、8=最遅） |
| `ReelDrumTimer_{L,C,R}` | 次のコマ送りまでの残りtick |
| `ReelDrumTarget_{L,C,R}` | 着地させたい面index(0-19) |
| `ReelDrumFaceIndex` | 各`item_display`が固定で持つ自分の面番号(0-19) |
| `ReelDrumFaceK` | 面の表示計算用ワーク値 |

回転は「厳密に18度刻みの面indexを一定tick間隔で送る」方式で実装しており、spec原案にあった1/100度単位の連続角度は使っていない（section 5.3で触れられている「面数固定・18度刻み前提なら動的な三角関数計算は不要」という簡易版をそのまま採用した）。

正面(k=0)に来る面は `k = (FaceIndex - Spin) mod 20` の関係になるように`reel/drum/face/apply`で計算している。減速の着地判定は`Spin == Target`で行い、着地時に`Spin`を`Target`へスナップするため、このマイナス方向の式にしておくことで着地後に正面へ来る面のFaceIndexが必ず`Target`（＝`Result_{L,C,R}`）と一致する。プラス方向（`FaceIndex + Spin`）で計算すると正面に来るのは`(20-Target) mod 20`面になってしまい、`Target=0`以外では見た目の着地シンボルと実際の抽選結果がズレるので注意。

## 既存ロジックとの接続点

| タイミング | 処理 | 呼び出し元 |
|---|---|---|
| 役抽選確定直後 | `ReelDrumTarget_{L,C,R}` を既存の `Result_{L,C,R}`（ストリップindex 0-19、ドラムの面indexと同一の意味）と同期 | `slot:reel/result/set_normal` |
| 回転開始直前 | `ReelDrumState`を加速(1)にリセット、速度を最遅に戻す | `slot:is_stanby`（`SlotState`を3にする直前） |
| 毎tick（常時） | 状態機械を1tick分進め、見た目を更新 | `slot:tick/machine` → `slot:reel/drum/tick/` |
| 各停止ボタン押下時 | 対応するドラムを減速(3)へ遷移 | `slot:parts/button/push/{left,center,right}/update` → `slot:reel/drum/spin/stop_{left,center,right}` |

減速中は毎コマ「現在面 == 目標面」を判定し、一致した瞬間に着地確定(4)へ遷移して次tickで停止(0)になる。既存のボタン処理（`api:slot/roll/*`によるイリュージョンの即時整列や結果判定）はこのドラムの着地を待たない。ドラムはあくまで見た目の演出であり、結果はこれまで通りボタン押下時点で確定する。

回転リセットのトリガーを`slot:reset`（1ゲーム終了時＝3つ目のボタン停止の直後）ではなく`slot:is_stanby`（次の回転が実際に始まる直前）に置いているのは、着地アニメが完了する前に強制的にAccelへ戻されてしまう競合を避けるため。ドラムのtick自体も`SlotState==3`にゲートせず常時呼ぶことで、3つ目のボタン停止でSlotStateが0へ戻った後も減速→着地アニメを最後まで再生できるようにしている。

## ファイル

| ファイル | 役割 |
|---|---|
| `reel/drum/geometry` | 20面分のtransformation定数テーブルをstorageへ定義 |
| `reel/drum/init/{left,center,right}` | 各リールの20面`item_display`を召喚 |
| `reel/drum/init/` | 3リール分の`init`をまとめて呼ぶ |
| `reel/drum/spin/reset` | 1ゲーム開始前の状態リセット |
| `reel/drum/spin/stop_{left,center,right}` | 停止ボタン押下時に減速へ遷移 |
| `reel/drum/tick/{left,center,right}` | 状態機械（加速/定速/減速/着地確定）を1tick分進める |
| `reel/drum/tick/` | 3リール分の`tick`をまとめて呼ぶ |
| `reel/drum/face/update_{left,center,right}` | 20面すべての表示位置を現在のSpinへ同期 |
| `reel/drum/face/apply` | （マクロ）1面分の表示indexを計算 |
| `reel/drum/face/set_transform` | （マクロ）ジオメトリテーブルからtransformationを反映 |
| `install/place_parts_drum` | 導入用エントリポイント（オプトイン） |

## 既知の注意点 / 今後

- 60体同時更新のtick負荷は未計測。複数台同時稼働時は実機で計測すること。
- `interpolation_duration`は4tick固定。カクつき・レスポンス遅延のバランスは実機で調整する。
- 減速の速度上限（8tick/コマ）・巡航速度（4tick/コマ）は仮の値。加速は8→4で頭打ちになり、そのまま定速(2)へ遷移する。`ReelDrumSpeed_Fastest`(2)は現状どこからも到達しない予約値（`main:load/const`の`$SlotState_*`等と同じく、将来のチューニング用に定義だけしてあるドキュメント的定数）。演出のノリを見て`reel/drum/tick/*`内の数値を調整する。
- 台どうしの干渉を避けるため、ドラム関連のエンティティ選択は`distance=..2`で絞っている（自分のドラムは召喚時の座標からarmor_standまで最大約1.82ブロックしか離れないため、これで十分自機のみを拾える）。ドラム搭載台どうしを2ブロック未満で隣接させると干渉する可能性があるので、設置間隔に注意。
- 既存のイリュージョン式リール（`slot_reel_{L,C,R}_{up,mid,down}`）と完全併用する設計にしてあるため、両方を有効にすると視覚的に重なる。本採用する場合は既存リール表示側の無効化を別途検討する。
- `slot:uninstall/use`（`uninstall/kill`）はドラムの60体もまとめてkillするよう対応済み。
- オプトインinstaller(`install/place_parts_drum`)は導入完了時に自分で`slot_new`タグを外す。外し忘れると、後で近くに別の台を通常の`install/place_parts`フローで設置した際に、そのRotation合わせ処理が既存のドラムまで巻き込んで向きを変えてしまう。
