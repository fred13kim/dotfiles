set -g mode-keys vi
set -g monitor-activity on
set-option -sg escape-time 10
set -g aggressive-resize on
set -g automatic-rename on
set -g automatic-rename-format '#{b:pane_current_path}'
set -g base-index '1'
set -g focus-events on
set -g pane-base-index '1'



set-option -g mouse on
unbind-key -T copy-mode-vi MouseDragEnd1Pane
bind-key -T copy-mode-vi WheelUpPane select-pane\; send-keys -t'{mouse}' -X clear-selection\; send-keys -t'{mouse}' -X -N 5 scroll-up
bind-key -T copy-mode-vi WheelDownPane select-pane\; send-keys -t'{mouse}' -X clear-selection\; send-keys -t'{mouse}' -X -N 5 scroll-down
bind-key -T root DoubleClick1Pane if-shell -Ft'{mouse}' '#{alternate_on}' "send-keys -M" "copy-mode -t'{mouse}'; send-keys -t'{mouse}' -X select-word"
bind-key -T root TripleClick1Pane if-shell -Ft'{mouse}' '#{alternate_on}' "send-keys -M" "copy-mode -t'{mouse}'; send-keys -t'{mouse}' -X select-line"
bind-key -T copy-mode-vi DoubleClick1Pane if-shell -Ft'{mouse}' '#{alternate_on}' "send-keys -M" "copy-mode -t'{mouse}'; send-keys -t'{mouse}' -X select-word"
bind-key -T copy-mode-vi TripleClick1Pane if-shell -Ft'{mouse}' '#{alternate_on}' "send-keys -M" "copy-mode -t'{mouse}'; send-keys -t'{mouse}' -X select-line"
bind-key -T copy-mode-vi Escape send-keys -X cancel



# Linux only
#set -g mouse on
#bind-key -T copy-mode MouseDragEnd1Pane send-keys -X copy-pipe-no-clear pbcopy
#bind-key -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe-no-clear pbcopy

#bind -n WheelUpPane if-shell -F -t = "#{mouse_any_flag}" "send-keys -M" "if -Ft= '#{pane_in_mode}' 'send-keys -M' 'select-pane -t=; copy-mode -e; send-keys -M'"
#bind -n WheelDownPane select-pane -t= \; send-keys -M
#bind -n C-WheelUpPane select-pane -t= \; copy-mode -e \; send-keys -M
#bind -T copy-mode-vi    C-WheelUpPane   send-keys -X halfpage-up
#bind -T copy-mode-vi    C-WheelDownPane send-keys -X halfpage-down
#bind -T copy-mode-emacs C-WheelUpPane   send-keys -X halfpage-up
#bind -T copy-mode-emacs C-WheelDownPane send-keys -X halfpage-down
#
## To copy, left click and drag to highlight text in yellow, 
## once you release left click yellow text will disappear and will automatically be available in clibboard
## # Use vim keybindings in copy mode
## Update default binding of `Enter` to also use copy-pipe
#unbind -T copy-mode-vi Enter
#bind-key -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel "xclip -selection c"
#bind-key -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe-and-cancel "xclip -in -selection clipboard"

bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'
