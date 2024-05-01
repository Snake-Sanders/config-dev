# TMUX CheatSheet


Leader Key:
`Ctrl + b` leader key is defined by default as .
`Ctrl + s` the custom biding is set to 

## Configuration 

Create a a file `~/.tmux.config` to customize and define keybindings
load the configuration with:

leader + : + `source-file ~/.tmux.config`
leader + I to download the plugs set in the config
## Basics

leader + x exits a pane
leader + d detach session
leader + % split the window in a vertical pane
leader + " split the window in a horizontal pane
leader + z zooms in/out the current pane full screen 
leader + s to list the open sessions, windows and panes

leader + arrows to move among panes

Commands

leader + : to start typing a command

tmux ls: list the current sessions
tmux attach: reconnects to the session
