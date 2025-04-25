# tmux

## TMUX Package Manager

To allow for the tmux package manager to be correctly installed the following needs to be run based on the current setup.

```
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```
Details can be found here: https://github.com/tmux-plugins/tpm

## Catppuccin

This repository also needs to be installed. To do that run the following command:

```
mkdir -p ~/.config/tmux/plugins/catppuccin
git clone -b v2.1.3 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
```

Make sure to install the plugins by running `Ctrl+a, I`. Everything should appear as expected.

