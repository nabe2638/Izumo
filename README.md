# Izumo Project

作成日: 2026-06-30 (JST)  
更新日: 2026-07-06 (JST)

---

# 1. 概要

Izumo Project は、USBから起動できる軽量Linuxディストリビューション「Izumo」を開発するプロジェクトです。

初心者でも100%再現できるビルド環境を目指し、GitHubで公開・管理することを目的としています。

---

# 2. ディストリビューション

- 名称: Izumo
- ベースOS: Debian Stable (trixie)
- デスクトップ環境: Xfce
- ビルドツール: live-build

---

# 3. 主な構成

- live-build による ISO イメージ生成
- Python3 + GTK4 による Izumo Builder
- Pythonパッケージ構成（izumo_builder）
- 軽量・シンプル設計
- GitHubで再現可能な開発環境

---

# 4. プロジェクト構成

```text
~/Izumo
├── auto/
├── assets/
├── builder/
├── config/
├── docs/
├── output/
├── scripts/
├── README.md
├── LICENSE
└── .gitignore
```

Builder ディレクトリ

```text
builder/
├── assets/
├── build.sh
├── docs/
├── izumo_builder/
│   ├── __init__.py
│   ├── app.py
│   └── builder.py
├── main.py
├── resources/
├── run_builder.sh
├── tests/
└── ui/
    └── main_window.ui
```

---

# 5. Builder の起動方法

Builder ディレクトリへ移動します。

```bash
cd ~/Izumo/builder
```

Builder を起動します。

```bash
./run_builder.sh
```

起動順序

```text
run_builder.sh
        │
        ▼
python3 main.py
        │
        ▼
izumo_builder.app
        │
        ▼
izumo_builder.builder
```

---

# 6. ドキュメント構成

```text
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
```

---

# 7. 開発方針

- 推測で実装しない
- 必ず実機で確認する
- GitHubで100%再現できることを最優先とする
- 一度に一機能のみ実装する
- 実装後は必ずテストを行う
- README・設計書・CHANGELOGを更新してからコミットする
- live-build の生成物（binary/、cache/、chroot/、ISO など）は Git 管理対象外とする

---

# 8. 最終目標

- USBブートLinux
- Persistence対応
- Xfce環境
- Firefox
- fcitx5 + Mozc
- Thunar
- GParted
- GNOME Disks
- GUFW
- Conky
- Izumo Builder
- GitHub公開による再現性100%

---

# 9. 現在の開発状況

- Milestone: M0
- Pythonパッケージ構成への移行完了
- `builder/src` 削除完了
- GUI起動確認済み
- `ModuleNotFoundError` 解消済み
- Builder構成整理完了
- ドキュメント整備を進行中
