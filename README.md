# Izumo Project

作成日: 2026-06-30 (JST)
更新日: 2026-07-02 (JST)

---

# 1. 概要

Izumo Projectは、
USBから起動できる軽量Linuxディストリビューションの開発プロジェクトです。

初心者でも扱えるシンプルな構成と、
GitHubで再現可能なビルド環境を目指します。

---

# 2. ディストリビューション

- 名称: Izumo
- ベース: Debian Stable (trixie)
- デスクトップ: Xfce

---

# 3. 主な構成

- live-buildによるISO生成
- Python3 + GTK4によるBuilder開発
- 軽量・シンプル設計

---

# 4. ドキュメント構成

docs/
├── 00_Project.md
├── 01_Architecture.md
├── 02_Directory.md
├── 03_BuildSystem.md
├── 04_Builder.md
├── 05_Roadmap.md
├── 06_Test.md
├── 07_Branding.md
└── CHANGELOG.md

---

# 5. 開発方針

- 推測で実装しない
- 必ず実環境で確認する
- GitHub再現性を最優先
- 一度に1機能のみ開発
- live-build の生成物（binary/、cache/、chroot/、ISO など）は Git 管理対象外とする

---

# 6. 最終目標

- USBブート
- Persistence
- 日本語環境
- Xfce軽量環境
- GUI Builder（Izumo Builder）

---

# 7. 注意

このプロジェクトは設計段階であり、
実装はフェーズごとに段階的に進める。
