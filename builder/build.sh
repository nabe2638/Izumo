#!/bin/bash

set -e

PROJECT="/home/t2rp/Izumo"
CONFIG="$PROJECT/config"
OUTPUT="$PROJECT/output"
LOG="$PROJECT/build.log"

echo "======================================"
echo "[Izumo Build System] START"
echo "======================================"

echo "[STEP 1] Checking environment..."

command -v lb >/dev/null 2>&1 || {
    echo "[ERROR] live-build not found"
    exit 1
}

echo "[OK] live-build found"

echo "[STEP 2] Cleaning old build..."

cd "$PROJECT"

rm -rf chroot cache binary output
mkdir -p output

echo "[STEP 3] Running live-build..."

export LB_CONFIG="$CONFIG"

sudo lb clean || true
sudo lb config
sudo lb build | tee "$LOG"

echo "[STEP 4] Checking output..."

ISO_FILE=$(find . -name "*.iso" | head -n 1)

if [ -z "$ISO_FILE" ]; then
    echo "[ERROR] ISO not found"
    exit 1
fi

echo "[OK] ISO generated: $ISO_FILE"

echo "[STEP 5] Done"

ls -lh output
