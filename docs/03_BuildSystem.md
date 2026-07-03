# Izumo Project - Build System Design

更新日: 2026-07-02 (JST)

## 1. Overview

Izumo Project のビルドシステムは、
Debian live-build をベースとした ISO 生成パイプラインである。

目的は以下を満たすことである：

- USBブート可能な軽量Linux生成
- 初心者でも再現可能なビルド構造
- GUI Builder（Izumo Builder）との将来的連携

---

## 2. Architecture Overview

[User]
↓
run_builder.sh（tmux制御）
↓
builder/build.sh（ビルド制御）
↓
live-build (lb build)
↓
config/（OS定義）
↓
ISO生成
↓
output/

---

## 3. Component Roles

### 3.1 run_builder.sh

- tmuxセッション管理
- build.sh の起動
- ログ収集

役割：実行エントリーポイント

---

### 3.2 builder/build.sh

- live-buildの実行制御
- ISO生成フロー管理
- ログ出力
- 成果物整理

役割：ビルド制御レイヤー

---

### 3.3 config/

Debian live-build 標準構造 + Izumoカスタム設定

主な構成：

- package-lists/
- includes.chroot/
- hooks/
- apt/
- bootloaders/

役割：OS定義レイヤー

---

## 4. Build Flow Specification

### Step 1: Environment Check

- Izumoディレクトリ確認
- live-buildコマンド確認

---

### Step 2: Cleanup (optional)

- cache/
- chroot/
- output/

---

### Step 3: ISO Build Execution

コマンド：

```
lb build
```

対象：

```
config/
```

---

### Step 4: ISO Validation

- output/*.iso存在確認
- ファイルサイズ > 0

---

### Step 5: Artifact Output

```
output/Izumo-YYYYMMDD.iso
```

---

## 5. Directory Constraints

- live-build設定は config/ に集約する
- builder/ は制御専用
- run_builder.sh は起動専用

---

## 6. Build Artifact Policy

以下のビルド生成物は Git 管理対象外とする。

- binary/
- cache/
- chroot/
- .build/
- binary.modified_timestamps
- chroot.files
- chroot.packages.install
- chroot.packages.live
- live-image-*.contents
- live-image-*.files
- live-image-*.packages
- *.iso
- *.img

これらは live-build 実行時に生成される成果物であり、リポジトリには含めない。

---

## 7. Design Principles

- 再現性100%
- 初心者でも理解可能
- GUI Builder拡張を前提
- OS構成とビルド制御の分離

---

## 8. Future Integration (Izumo Builder)

将来的に以下と連携：

- GTK4 GUI
- build.shラッパー操作
- ISOワンクリック生成

---

## 9. Output

```
output/Izumo.iso
```

または

```
output/Izumo-YYYYMMDD.iso
```

---

## 10. Summary

Izumo Build System は以下の3層構造である。

1. UI層（将来：Izumo Builder）
2. 制御層（run_builder.sh / build.sh）
3. OS定義層（config/ + live-build）

また、ビルド成果物は Git 管理対象外とし、ソースコードと生成物を明確に分離する。
