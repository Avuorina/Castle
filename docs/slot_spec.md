# スロット仕様

このドキュメントでは、スロットの各種IDや状態の仕様についてまとめます。

## SlotState (スロット状態)

スロットの現在の状態を表すスコアです。

| 値 | 定数 | 状態名 | 意味 |
| ---: | --- | --- | --- |
| 0 | `$SlotState_Wait` | 待機中 | レバーを引ける状態 |
| 1 | `$SlotState_Standby` | スタンバイ | レバーが引かれ、役抽選に入る状態 |
| 2 | `$SlotState_Decided` | 役決定 | 役が決定した状態 |
| 3 | `$SlotState_Reeling` | 回転中 | リール回転中、ボタン入力待ち |

## ResultID (結果・役ID)

抽選で決定される役のIDです。

| 値 | 定数 | 役 | 詳細・効果 |
| ---: | --- | --- | --- |
| 1 | `$Result_Kas` | カス (ハズレ) | 払い出しなし |
| 2 | `$Result_Bell` | ベル | 15枚払い出し |
| 3 | `$Result_Rep1` | リプレイ | Replayタグ付与 (払い出しなし) |
| 4 | `$Result_Rep2` | リプレイ? | Payout 1 (1枚払い出し) |
| 5 | `$Result_Rep3` | リプレイ? | Payout 2 (2枚払い出し) |
| 6 | `$Result_Rune1` | ルーン | Replayタグ付与、PointIn 10〜30 |
| 7 | `$Result_Rune2` | ルーン | Payout 2 (2枚払い出し)、PointIn 10〜30 |
| 8 | `$Result_Rune3` | ルーン | Replayタグ付与、PointIn 30〜100 |
| 9 | `$Result_Rune4` | ルーン | Replayタグ付与、PointIn 30〜100 |
| 10 | `$Result_Rune5` | ルーン | Replayタグ付与、PointIn 30〜100 |
| 11 | `$Result_Rune6` | ルーン | Replayタグ付与、PointIn 600 |
| 12 | `$Result_Ningen` | ニンゲンヤメマスカ | （未実装） |

## 図柄ID (Symbol ID)

リールの各コマ（`custom_model_data.strings`）に割り当てられている図柄のIDです。

| 値 | 定数 | 図柄名 | 略称 |
| ---: | --- | --- | --- |
| 1 | `$Symbol_Kas` | カス | kas |
| 2 | `$Symbol_Cherry` | チェリー | che |
| 3 | `$Symbol_Bell` | ベル | bel |
| 4 | `$Symbol_Rune` | ルーン | run |
| 5 | `$Symbol_Seven` | 赤7 | 7 |
| 6 | `$Symbol_Bar` | BAR | bar |
| 7 | `$Symbol_Replay` | リプレイ | rep |
| 8 | `$Symbol_V` | V | v |
