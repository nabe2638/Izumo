# BUILD.md（Izumo Project 構築手順書）

**日付：2026-06-30 JST**

---

# ■ 0. このドキュメントの目的

このBUILD.mdは、Izumo OSを誰でも同じ手順で再現できるようにするための構築手順書です。

---

# ■ 1. 前提環境

## 必須環境
- Raspberry Pi 4
- microSDカード（32GB以上推奨）
- Linux PC（Debian / Ubuntu推奨）
- インターネット接続
- Gitインストール済み

---

# ■ 2. 必要パッケージ

sudo apt update
sudo apt install -y git live-build debootstrap qemu-user-static binfmt-support ca-certificates curl wget

---

# ■ 3. リポジトリ取得

git clone https://github.com/nabe2638/Izumo.git
cd Izumo

---

# ■ 4. ビルド開始

sudo lb build

---

# ■ 5. 成果物

- live-image-arm64.hybrid.iso または .img

---

# ■ 6. 書き込み

sudo dd if=live-image.img of=/dev/sdX bs=4M status=progress
sync

---

# ■ 7. 起動確認

- Raspberry Piで起動
- Xfce表示確認
- ネット接続確認

---

# ■ 8. 成功条件

- 起動成功
- GUI表示
- ネット接続可能
