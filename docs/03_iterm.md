# iTerm2

The default terminals on MacOS (/bin/zsh) does **not** support true colors, so better to use _iTerm2_ instead

https://iterm2.com/

Here is how to pimp your terminal for macos
https://www.youtube.com/watch?v=wNQpDWLs4To

1. make shure you have zsh as default

   > echo $0
   > -zsh

2. color scheme

- go to https://iterm2colorschemes.com/
- search for `Gruvbox Dark`
- download the style file, save it as `.itermcolors`
- go to iTerm2, open settings/profiles/colors tab
- import the theme file
- make sure the style is selected.

3. Oh My Zsh

- go to `https://ohmyz.sh/`
- install with curl

4. Nerd Fonts

- go to `nerdfonts.com`
- go to downloads and select a font type
- then download it and install it

option 1: double click on it to install one by one
option 2:

    brew tap homebrew/cask-fonts &&
    brew install --cask font-jetbrains-mono-nerd-font

- open iTerm2 settings/profiles/text tab and in `Font` field
  select the new font.

5. Power Level 10k

Power Level 10k changes the console style. Go to:

https://github.com/romkatv/powerlevel10k

Note: The installation with `brew` **does not work**, it can't find the installed package in the path.

I install it directly from source.

notice how this checks out the repo directly under `Oh my zsh` themes directory:

    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

- enabled this plug
- open `~/zshrc` and set

  ZSH_THEME="powerlevel10k/powerlevel10k"

- save the file
- source the file with `source ~/.zshrc`
- setup this plug with the wizard that shows up automatically. If this does not start, check out the home page on how use the command to lauch.

6. ZSH syntax highlight

https://github.com/zsh-users/zsh-syntax-highlighting

check the specific installation section for `Oh-my-zsh`

- Install the package:

`brew install zsh-syntax-highlighting`

- Enable `zsh-syntax-highlighting` by sourcing the script. Running this command on the terminal will add the source line to the end of your `.zshrc`:

  echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

Activate the plugin in ~/.zshrc:

    plugins=( [plugins...] zsh-syntax-highlighting)

Restart zsh (such as by opening a new instance of your terminal emulator).

7. Auto suggestions

https://github.com/zsh-users/zsh-autosuggestions

Clone this repository into $ZSH_CUSTOM/plugins (by default ~/.oh-my-zsh/custom/plugins)

    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):

    plugins=(
        # other plugins...
        zsh-autosuggestions
    )

Start a new terminal session.

8. fix Terminal font

If after these steps you open termianl (/bin/zsh) and the prompt has strange characters, then go to Terminal settings change the font to `JetBrainMonoNL NFM Regular 14`

This is one of the adapted fonts from here https://www.nerdfonts.com/font-downloads
