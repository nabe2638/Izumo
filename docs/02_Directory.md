# Izumo Project ディレクトリ構成

作成日: 2026-06-30 (JST)

---

# 1. プロジェクトルート

~/Izumo

---

# 2. 全体構成

Izumo/
├── auto/          # 自動生成・補助スクリプト
├── assets/        # 画像・テーマ・リソース
├── builder/       # Izumo Builder（GUIアプリ）
├── config/        # live-build設定
├── docs/          # ドキュメント
├── output/        # ISO出力先
├── scripts/       # ビルド・補助スクリプト
├── README.md
└── LICENSE

---

# 3. builder/ 構成

builder/
├── src/           # Pythonロジック
├── ui/            # GTK UI定義
├── resources/     # アイコン・画像
└── __init__.py

---

# 4. config/（live-build）

Debian live-build用設定

- boot設定
- パッケージリスト
- ISO生成設定

---

# 5. output/

生成物格納

- ISOファイル
- ビルドログ

※Git管理対象外想定

---

# 6. 設計方針

- 構造はシンプルに維持
- 初心者でも迷わない階層
- 変更は設計合意後のみ
