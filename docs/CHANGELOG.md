# CHANGELOG.md（変更履歴）

更新日：2026-07-05 (JST)

---

> **注記**
>
> Izumo Project は開発途中でプロジェクト構成とフェーズ管理を見直し、
> Milestone M0 を起点とした新しいフェーズ体系へ移行しました。
>
> そのため、初期の履歴には旧プロジェクトで使用していた Phase番号
> （Phase 4・Phase 5）が含まれています。
>
> 履歴の改ざんは行わず、当時の記録をそのまま残しています。

---

# ■ Phase 6-4

- Pythonパッケージ構成へ移行
- `builder/izumo_builder/` を追加
- `__init__.py` を追加
- `main.py` を追加
- `app.py` を Python パッケージ対応へ更新
- `builder.py` を Python パッケージへ移行
- `run_builder.sh` から `main.py` を起動する構成を採用
- GUI起動テスト成功
- Build ISO ボタン表示確認
- Stop ボタン表示確認
- ProgressBar 表示確認
- `ModuleNotFoundError: No module named 'builder'` を解消
- README.md 更新
- `docs/01_Architecture.md` 更新

---

# ■ 旧プロジェクト Phase 5
（現在の Izumo Project では Phase 2 相当）

- 設計書作成
- OS構造定義
- 開発ロードマップ作成
- ブランド設計作成

---

# ■ 旧プロジェクト Phase 4
（現在の Izumo Project では Phase 1 相当）

- Raspberry Pi開発環境構築
- Debian 13 (trixie) arm64導入
- GitHubリポジトリ作成
- SSH接続設定
- 初回Push完了

---

# ■ Phase 2

- docs/DESIGN.md → docs/01_Architecture.md 移行（アーカイブ化）
- docs/00_Project.md 作成
- docs/02_Directory.md 作成
- docs/04_Builder.md 作成
- README.md 作成・更新
- ドキュメント構造整理完了

---

# ■ Repository Cleanup（2026-07-02）

- .gitignore を整理
- live-build の生成物を Git 管理対象外へ変更
- `git rm --cached` により生成物の Git 管理を解除
- README.md 更新
- docs/03_BuildSystem.md 更新
- Build Artifact Policy を追加

---

# ■ メモ

このプロジェクトは設計駆動型で開発される。
