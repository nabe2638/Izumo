# Izumo Project

作成日: 2026-06-30 (JST)

---

# 1. プロジェクト概要

## プロジェクト名
Izumo Project

## ディストリビューション名
Izumo

## Builder名
Izumo Builder

---

# 2. プロジェクト目的

USBメモリから起動可能な軽量Linuxディストリビューションを開発する。

初心者でも扱えるUIと構成を持ち、
GitHub上で誰でも再現できることを目標とする。

---

# 3. 技術スタック

- ベースOS: Debian Stable (trixie)
- デスクトップ環境: Xfce
- ISO生成: live-build
- Builder: Python3 + GTK4

---

# 4. 最終目標

- USBブート対応
- Persistence対応
- 日本語入力（fcitx5 + Mozc）
- Firefox標準搭載
- ファイル管理（Thunar）
- システム管理ツール搭載
- 軽量UI最適化
- 独自テーマ・ブランド統一
- Izumo Builder GUI開発

---

# 5. プロジェクト方針

- 推測で実装しない
- 必ず実ログ・実環境で確認する
- GitHub再現性を最優先
- 一度に1機能ずつ開発する

---

# 6. ディレクトリ構成

~/Izumo
├── auto/
├── assets/
├── builder/
├── config/
├── docs/
├── output/
├── scripts/
├── README.md
└── LICENSE
