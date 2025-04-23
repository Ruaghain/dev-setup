# tmux

## TMUX Package Manager

To allow for the tmux package manager to be correctly installed the following needs to be run based on the current setup.

```
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

The `tmux.conf` file then needs to be updated with the following:

```
# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.config/tmux/plugins/tpm/tpm'
```

Details can be found here: https://github.com/tmux-plugins/tpm
