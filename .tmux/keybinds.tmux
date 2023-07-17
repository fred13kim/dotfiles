unbind 'C-b'
set -g prefix 'C-Space'
bind 'C-Space' send-prefix

unbind '%'
unbind '"'
unbind '-'
bind '-' splitw -v
bind '\' splitw -h
bind '_' splitw -vb
bind '|' splitw -hb

bind 'N' prev
bind 'n' next
bind 'p' last

# vi pane movement
unbind 'Left'
unbind 'Down'
unbind 'Up'
unbind 'Right'
bind 'h' selectp -L
bind 'j' selectp -D
bind 'k' selectp -U
bind 'l' selectp -R

