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

## Example of use

```
project/
│
├── CMakeLists.txt
└── main.cpp
```


add `CMakeLists.txt` to the root of the dir project

```cmake
# Minimum CMake version required
cmake_minimum_required(VERSION 3.10)

# Set project name
project(MyAppProject)

# Set C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add the executable, this takes the source file and output name
add_executable(app main.cpp)
```

Create a subdirecotry `build`

```
mkdir build
cd build
cmake ..
make
```

Then you can run it by calling `./app`

