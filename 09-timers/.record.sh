
tmuxL send-keys -t "${SESSION}:0.0" './victim' C-m
tmuxL send-keys -t "${SESSION}:0.1" './inject ./hello $(pgrep victim)'

sleep 1
tmuxL send-keys -t "${SESSION}:0.1" C-m 'cat /proc/$(pgrep victim)/timers'

sleep 1
tmuxL send-keys -t "${SESSION}:0.1" C-m
