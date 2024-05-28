# Neovim Cheatsheet

## File management

- `%`: creates new file 
- `d`: creates new directory 
- `:Ex`: opens file explorer

### Neo Tree

- `a`: to add a file or directory, directory ends with `/`

## Edit

- select text + `=`: formats text

### Select block within symbols 

Example: 

    fruit_names = [ "apple", "orange", "pear"]

command: vi + symbol
selects the content **excluding** the symbol
anywhere within `[` and `]`, press `vi` + `[`
will select the content `"apple", "orange", "pear"`


command: va + symbol
selects the content **including** the symbol
anywhere within `[` and `]`, press `va` + `[`
will select the content `[ "apple", "orange", "pear"]`

### Select a word

anywhere on the word type `viw` will sellect the whole word.
Also works with `viW`

## Diagnostics

`:LspInto` to see if the LSP is running, in case syntax highlight is broken.
`:Mason` to check the plug installation for syntax, autocomplete, parser, highlight.
