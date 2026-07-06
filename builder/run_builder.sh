#!/usr/bin/env bash

set -e
set -o pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

cd "$SCRIPT_DIR"

echo
echo "========================================"
echo " Izumo Builder"
echo "========================================"
echo

exec python3 main.py
