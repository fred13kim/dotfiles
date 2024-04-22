set -g status-interval '1'

set-option -g default-terminal "tmux-256color"
#set-option -sa terminal-overrides ',xterm-256color:RGB'
#set-option -g default-terminal "screen-256color"

set -g status-position top
set -g status-style 'bg=default,fg=white,bold'

#h is hostname
set -g status-right "#{?client_prefix,#[reverse][Prefix]#[noreverse],}#($HOME/.scripts/emoji.sh) #($HOME/.scripts/battery.sh) | #($HOME/.scripts/temperature.sh)°C | %I:%M:%S %p | %b-%d " 
set -g status-right-style 'bg=default,fg=white,bold'
set -g status-right-length 64

set -g status-left "[#S] "
set -g status-left-style 'bg=default,fg=white,bold'
set -g status-right-length 64

set -g pane-active-border-style "bg=default, fg=default"
set -g pane-border-style "bg=default, fg=default"

#set -g mode-style "fg=default, bg=default,reverse"

set -g status-justify left

set -g window-status-format "#[fg=white]#{window_index}#(echo ":")#{window_name}"
set -g window-status-current-format "#[bg=#E0528EA,fg=white]|#[bg=#E0528EA,fg=white]#{window_index}#(echo ":")#{window_name}"
set -g renumber-windows on
