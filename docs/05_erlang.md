# Erlang

There is a specific plug for `asdf`.

## First read the installation

https://github.com/asdf-vm/asdf-erlang

https://github.com/asdf-vm/asdf-erlang#before-asdf-install

## Installation

* preinstallation 

brew install autoconf
brew install wxwidgets
brew install libxslt fop

asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git

* now install erlang
to skip the Java dependency during installation use:

export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac"

asdf install erlang <version>
asdf install erlang 26.1.2

* now set one version as globals

`asdf global erlang 26.1.2`

* check the path

if in a new terminal `which erl` does not work, then make 
sure that the asdf executable is in the path of your terminal.
I my case iTerm and ZSH. Go back to installing asdf steps.
