set -g status-interval '1'

set-option -g default-terminal "tmux-256color"
set-option -sa terminal-overrides ',xterm-256color:RGB'

set -g status-position top
set -g status-style 'bg=default,fg=green,bold'

#h is hostname
set -g status-right "#[fg=green,bold]#{?client_prefix,#[reverse][Prefix]#[noreverse],}#[fg=green,bold] #[fg=green,bold]#($HOME/.scripts/guboogie.sh)#[fg=green,bold] #($HOME/.scripts/battery.sh) | #($HOME/.scripts/temperature.sh)°C | %I:%M:%S %p | %b-%d " 
set -g status-right-style 'bg=default,fg=green,bold'
set -g status-right-length 64

set -g status-left "[#S] "
set -g status-left-style 'bg=default,fg=green,bold'
set -g status-right-length 64

set -g pane-active-border-style "bg=default, fg=default"
set -g pane-border-style "bg=default, fg=default"

#set -g mode-style "fg=default, bg=default,reverse"

set -g status-justify left

set -g window-status-format "#[fg=blue,bold]#{window_index}#(echo ":")#{window_name}"
set -g window-status-current-format "#[bg=#3b4252,fg=blue]|#[bg=#3B4252,fg=white,bold]#{window_index}#(echo ":")#{window_name}"
set -g renumber-windows on
