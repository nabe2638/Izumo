#!/bin/bash

PROJECT="/home/t2rp/Izumo"
SESSION="izumo-build"

echo "=================================="
echo "[Izumo Builder v4] START"
echo "=================================="

cd "$PROJECT"

tmux has-session -t $SESSION 2>/dev/null

if [ $? != 0 ]; then
    tmux new-session -d -s $SESSION
fi

tmux send-keys -t $SESSION "cd $PROJECT/builder && ./build.sh | tee ../build.log" C-m

echo "[OK] Builder started in tmux session: $SESSION"
echo "Attach with: tmux attach -t $SESSION"
