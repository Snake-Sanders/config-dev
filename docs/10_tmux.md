# TMUX

https://www.youtube.com/watch?v=jaI3Hcw-ZaA&list=RDCMUCo71RUe6DX4w-Vd47rFLXPg&index=4

## Installation

`brew install tmux`

## Configuration

create a file unser `~/.tmux.conf`

Add TMU the plug manager

`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

add plugs

Theme

https://github.com/catppuccin/tmux

## Usage

https://www.youtube.com/watch?v=-B5VDp50daI&list=PLsz00TDipIfct4F3pHv6_uI9OyjphQEGZ&index=4

- Reload configuration [leader] + r
- Install pluggins [leader] + I
- Creat new pane vertical [leader] + c
- Split pane vertical [leader] + %
- Split pane horizontal [leader] + "
- Run commad [leader] + : + command
- deattach from session [leader] + d
  reatach with `tmux attach

To list the session, exit and run
tmux list-sessions
tmux ls
