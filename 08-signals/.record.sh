
tmuxL send-keys -t "${SESSION}:0.0" './victim' C-m
tmuxL send-keys -t "${SESSION}:0.1" './inject ./hello $(pgrep victim)'

sleep 1
tmuxL send-keys -t "${SESSION}:0.1" C-m 'kill -HUP $(pgrep victim)'

sleep 3
tmuxL send-keys -t "${SESSION}:0.1" C-m
