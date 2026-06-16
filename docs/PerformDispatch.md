# 演出ディスパッチ（多タイミング演出システム）

実機スロットと同じく、**結果はレバーオン時に1回だけ確定**し、**演出はレバーオン／各リール停止／全停止後／回転中**の複数タイミングで「再生」する。これを実現するための二層構造を `slot:perform/dispatch/` に追加した。

## 二層構造

```
レバーオン（SlotState 0→1）
  ↓
① 抽選レイヤー（reel/result/set_normal 内）
   役抽選        → ResultID
   演出シナリオ抽選 → PerformScenario   ※ ResultID で条件付け＝信頼度の本体
  ↓ 状態保存（スコアボード）
   ResultID ・ PerformScenario ・ PerformTimer ・ PerformStep
  ↓
② 演出レイヤー（イベント駆動・保存値を読んで再生するだけ・結果は変えない）
   on_lever        … レバーオン演出
   on_stop         … 停止ごと（ButtonState=第何停止）
   on_third_stop   … 全停止後
   tick            … 回転中アニメ（PerformTimer 駆動）
```

## PerformScenario

| 値 | 意味 |
|----|------|
| 0 | なし（通常） |
| 1 | 弱予告 |
| 2 | 中予告 |
| 3 | 強予告 |
| 5 | カットイン |

`select_scenario` の重みテーブル ＝ `P(シナリオ | 結果)`。ハズレ(ResultID=1)でもまれに強予告を出すことで「信頼度 < 100%」を作り、プレイヤーが祈る体験を生む。

## ファイル

| ファイル | 役割 | 呼び出し元 |
|----------|------|------------|
| `dispatch/select_scenario` | シナリオ抽選（ResultID条件付け） | `reel/result/set_normal` |
| `dispatch/on_lever` | レバーオン演出 | `reel/result/set_normal` |
| `dispatch/on_stop` | 停止ごと演出 | `parts/button/push/{left,center,right}/update` |
| `dispatch/on_third_stop` | 全停止後演出 | `tick/machine` |
| `dispatch/tick` | 回転中アニメ | `tick/machine` |
| `dispatch/reset` | 演出状態リセット | `slot:reset` |

## スコアボード

`PerformScenario` / `PerformTimer` / `PerformStep`（`main:load/once` で定義）。

## 注意 / 今後

- 現状の演出本体は Debug チーム向け `tellraw` のスキャフォルド。`#[TODO]` 箇所に `item_display` / `text_display` の `custom_model_data` 切替など本実装を入れる。
- 既存の `perform/normal/`（smorker / sequential / stage）はレバーオン時演出として残置。将来的に `on_lever` 配下へ寄せて一本化すると整理しやすい。
