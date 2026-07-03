# CHANGELOG.md（変更履歴）

更新日：2026-07-02 (JST)

---

# ■ Phase 4

- Raspberry Pi開発環境構築
- Debian 13 (trixie) arm64導入
- GitHubリポジトリ作成
- SSH接続設定
- 初回Push完了

---

# ■ Phase 5

- 設計書作成
- OS構造定義
- 開発ロードマップ作成
- ブランド設計作成

---

# ■ メモ

このプロジェクトは設計駆動型で開発される

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
- git rm --cached により生成物の Git 管理を解除
- README.md 更新
- docs/03_BuildSystem.md 更新
- Build Artifact Policy を追加
