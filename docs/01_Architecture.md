# Izumo Project 設計書

作成日: 2026-06-30 (JST)  
更新日: 2026-07-05 (JST)

---

# 1. プロジェクト概要

## プロジェクト名

Izumo Project

## ディストリビューション名

Izumo

## Builder名

Izumo Builder

---

# 2. プロジェクト概要

USB起動可能な軽量Linuxディストリビューションを構築する。

目的

- 初心者向けLinux環境
- 完全再現可能なビルド
- 軽量デスクトップ（Xfce）
- 保守性の高いPythonパッケージ構成

---

# 3. システムアーキテクチャ

## 3.1 基盤構成

- Debian Stable (trixie)
- Xfce
- systemd
- live-build
- Python3
- GTK4

---

## 3.2 コンポーネント構成

```text
run_builder.sh
        │
        ▼
main.py
        │
        ▼
IzumoApp
        │
        ▼
Builder
        │
        ▼
live-build
        │
        ▼
ISO生成
```

---

## 3.3 Pythonパッケージ構成

```text
builder/

├── izumo_builder/
│   ├── __init__.py
│   ├── app.py
│   └── builder.py
│
├── main.py
├── run_builder.sh
└── ui/
```

現在は互換性確認のため `src/` を一時的に保持している。

---

# 4. 各コンポーネントの責務

## run_builder.sh

- Builderの起動
- Python実行環境の開始

---

## main.py

- アプリケーションのエントリーポイント
- IzumoAppの起動

---

## izumo_builder.app

役割

- GUI初期化
- GTKアプリケーション生成
- Builderクラスの呼び出し

---

## izumo_builder.builder

役割

- GUIイベント処理
- Buildボタン処理
- Stopボタン処理
- live-build実行制御

---

# 5. ビルドフロー

```text
lb config
      │
      ▼
lb build
      │
      ▼
output/
```

---

# 6. config（定義層）

ビルド仕様を管理する。

- package-lists
- hooks
- includes
- bootloader
- apt設定

---

# 7. 設計方針

- Pythonパッケージ構成を採用する
- GUIとビルド処理を分離する
- 実装詳細は各設計書へ委譲する
- 推測ではなく実装に基づいて更新する
- GitHubで100%再現できることを最優先とする

---

# 8. 品質基準

- Builderが正常起動すること
- ModuleNotFoundError が発生しないこと
- GUIが表示されること
- lb build が再現可能であること

---

# 9. 現在の状況

- Pythonパッケージ化完了
- GUI起動確認済み
- ModuleNotFoundError 解消済み
- Phase 6-5 にてドキュメント整備中
