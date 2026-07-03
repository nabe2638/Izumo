# Izumo Project ディレクトリ構成

作成日: 2026-07-04 (JST)

---

# 1. プロジェクトルート

~/Izumo

---

# 2. プロジェクト構成

Izumo/
├── auto/          # 自動生成・補助スクリプト
├── assets/        # 画像・テーマ・リソース
├── builder/       # Izumo Builder（GUIアプリ）
├── config/        # live-build設定一式
├── docs/          # 設計・ドキュメント
├── output/        # 最終ISO出力先
├── scripts/       # ビルド・補助スクリプト
├── README.md
└── LICENSE

---

# 3. live-build 実行構造

## binary/
ISOルートファイルシステムの生成結果

- chrootから生成される中間成果物
- ISO構造の完成直前データ
- 再生成可能な一時領域
- Git管理対象外

---

## chroot/
Debianビルド環境

- ISO内部を構築する実体環境
- パッケージインストール実行領域
- rootfs構築用仮想環境

---

## cache/
ビルド高速化キャッシュ

- bootstrapキャッシュ
- パッケージキャッシュ
- 再ビルド高速化用データ

---

## .build/
live-build内部管理領域

- ビルドステージ管理
- 自動生成制御ファイル群

---

# 4. config/

live-build設定一式

- apt設定
- パッケージリスト
- bootloader設定
- hookスクリプト
- preseed設定

---

# 5. output/

最終ISO出力先

- Izumo-amd64.iso
- USB起動可能イメージ
- GitHub公開対象（要圧縮検討）

---

# 6. builder/

Izumo Builder（GUIツール）

- src/
- ui/
- resources/

---

# 7. 設計方針

- 実構成と完全一致
- live-build標準準拠
- 初心者でも理解可能
- 再現性100%

---

# 8. 重要ルール

- binary / chroot / cache は生成領域
- output は唯一の成果物
- config はビルド定義の中心
