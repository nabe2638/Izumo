# Izumo Project 設計書

作成日: 2026-06-30 (JST)  
更新日: 2026-07-04 (JST)

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

目的：
- 初心者向けLinux環境
- 完全再現可能なビルド
- 軽量デスクトップ（Xfce）

---

# 3. システムアーキテクチャ

## 3.1 基盤構成

- Debian Stable (trixie)
- Xfce
- systemd
- live-build

---

## 3.2 コンポーネント構成（抽象設計）

Izumoは以下の論理構造で構成される：

- builder（GUI操作層）
- config（ビルド定義層）
- live-build（生成エンジン）
- output（成果物層）

---

## 3.3 ビルド生成領域（抽象定義）

以下は生成プロセスにおける中間・成果物領域である：

- binary/ ＝ ISO生成中間構造
- chroot/ ＝ ビルド実行環境
- cache/ ＝ 再利用キャッシュ
- .build/ ＝ 内部制御領域
- output/ ＝ 最終成果物

※すべてGit管理対象外

---

# 4. ビルドフロー

lb config
↓
lb build
↓
output/ にISO生成

---

# 5. builder（抽象層）

GUI操作によるビルド制御

役割：
- live-buildの簡易操作
- 初心者向けUI
- ビルド実行制御

---

# 6. config（定義層）

ビルド仕様の中心

- package-lists
- hooks
- includes
- bootloader
- apt設定

---

# 7. 設計ルール

- 実装詳細はDirectoryへ委譲
- Architectureは抽象構造のみ記述
- 推測ではなく実態ベース設計
- 再現性を最優先

---

# 8. 品質基準

lb buildで完全再現可能であること

---

# 9. 注意事項

MyLinuxは完全廃止
