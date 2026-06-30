# MyLinux Project 設計書

作成日: 2026-06-30 (JST)

---

# 1. プロジェクト概要

## プロジェクト名

MyLinux Project

## ディストリビューション名

MyLinux

## Builder名

MyLinux Builder

---

# 2. 開発目的

初心者でも使いやすく、
USBメモリから起動できる軽量Linuxディストリビューションを開発する。

GitHubで公開し、
誰でも同じ手順でビルドできることを品質基準とする。

---

# 3. 開発ルール

開発は必ず以下の順序で行う。

```
設計
 ↓
実装
 ↓
テスト
 ↓
Git Commit
```

設計変更が必要な場合は、

・理由を説明する

・設計書を更新する

・合意後に実装する

---

# 4. 開発環境

開発マシン

Raspberry Pi 4 (8GB)

OS

Debian GNU/Linux 13 (Trixie)

Architecture

arm64

Python

3.13.5

Git

2.47.3

Locale

ja_JP.UTF-8

---

# 5. プロジェクト構成

```
MyLinux/

assets/
branding/
config/
docs/
live-build/
output/
src/
tests/
tools/

build.py
pyproject.toml
setup.py
README.md
LICENSE
.gitignore
```

---

# 6. 開発ポリシー

推測で実装しない。

必ず

・実際の設定

・実際のログ

・実際のバージョン

・実際のファイル

を確認してから実装する。

未確認事項は「未確認」と記載する。

---

# 7. GitHub公開方針

ソースコードのみ管理する。

生成物はGit管理対象外とする。

---

# 8. 品質基準

「動けばよい」ではなく、

GitHubから誰でも再現できることを品質基準とする。
