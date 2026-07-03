#!/usr/bin/env bash

set -e
set -o pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

cd "$PROJECT_ROOT"

echo
echo "========================================"
echo " Izumo Builder"
echo "========================================"
echo

echo "Project : $PROJECT_ROOT"
echo

exec sudo ./builder/build.sh
