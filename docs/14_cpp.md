## Installling CPP tools

## Clang 

Most probably Clang is already installed, but double check anyway:

```
clang --version

Apple clang version 15.0.0 (clang-1500.3.9.4)
Target: arm64-apple-darwin23.6.0
Thread model: posix
InstalledDir: /Library/Developer/CommandLineTools/usr/bin
```

otherwise install it with 

`brew install llvm`

## Neovim 

follow the installation in `https://clangd.llvm.org/installation`


add `clangd` to the `lspconfig`

```lua
-- cpp
clangd = {
   cmd = { 'clangd', '--background-index', '--clang-tidy', '--log=verbose' },
   init_options = {
     fallback_flags = { '-std=c++17' },
   },
   capabilities = capabilities,
},
 ```

## install CMake

`brew install --cask cmake`

check with:

```
cmake --version                                                                           main [✘?]
cmake version 3.30.3
```
