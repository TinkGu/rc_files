tmux
---

# tpm
## Install
`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

## Config
`vim ~/.tmux.conf`
```
# List of plugins
set -g @tpm_plugins '                \
    tmux-plugins/tpm                 \
    tmux-plugins/tmux-sensible       \
    tmux-plugins/tmux-resurrect      \
    tmux-plugins/tmux-continuum      \
    tmux-plugins/tmux-yank           \
    tmux-plugins/tmux-pain-control   \
    tmux-plugins/tmux-copycat        \
    tmux-plugins/tmux-open           \
    tmux-plugins/tmux-battery        \
    tmux-plugins/tmux-cpu            \
'

# Initialize TMUX plugin manager
run '~/.tmux/plugins/tpm/tpm'
```

## Run script to work around
`tmux start-server`

`tmux new-session -d`

`~/.tmux/plugins/tpm/scripts/install_plugins.sh`

`tmux kill-server`
