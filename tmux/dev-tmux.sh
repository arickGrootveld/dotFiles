#!/bin/bash
tmux split-window -h 'top'
tmux split-window -v 'nvidia-smi -l 5'
tmux resize-pane -D 5
tmux rename-window systemInfo
