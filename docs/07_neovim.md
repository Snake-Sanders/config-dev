
# sources

## The primeagen (youtube)

https://www.youtube.com/watch?v=w7i4amO_zaE

## typecraft (youtube)

https://www.youtube.com/watch?v=4zyZ3sw_ulc&list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn&index=3

# NeoVim

    brew install neovim

- create the configuration file for neovim

    ~/.config/nvim/init.lua

Here is to add iTerm to your nvim settings
Add the following to your `init.lua` config:

`vim.cmd("set termguicolors")`

Install a color scheme supporting true color, like gruvbox-material.

https://github.com/sainnhe/gruvbox-material

Switch to it colorsheme gruvbox-material.

## install plugs for neovim

 1. lazy (package manager)
 2. catpuccin (color scheme)
 3. telescope (fuzzy finder)
 4. treesitter (creates AST abstract syntax tree for highlight)
 5. nvim neo tree (tree navigation)
    - `Neotree filesystem reveal right`

## Tutorial

start `nvim` and type `:help` to beging the introduction

if the help page show a treesitter highlight error while scrolling the page, then install the highliter for this file `:TSUpdate vimdoc`
