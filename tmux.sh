#!/bin/bash

session="qsv-benchmark"

tmux new-session -d -s $session
tmux send-keys 'bash video-download.sh' 'C-m'
tmux send-keys 'to run the benchmark, execute \"bash quicksync-benchmark.sh\"' 'C-m'
tmux split-window -v
tmux send-keys 'intel_gpu_top' 'C-m'
tmux split-window -h
tmux send-keys 'htop' 'C-m'
tmux select-pane -t 0
tmux -2 attach-session -d
