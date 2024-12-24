#!/usr/bin/env bash

set -e

# -z -- if a string is null

if [ "$(uname)" = "Darwin" ]; then
    [ -d $(xcode-select --print-path) ] || xcode-select --install
    [ -z $(which brew) ] && curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | /bin/bash

    [ -z $(which fish) ] && brew install fish && echo "fish was installed." || echo "fish is already installed."
    [ -z $(which vim) ] && brew install vim && echo "vim was installed." || echo "vim is already installed."
    [ -z $(which gh) ] && brew install gh && echo "gh was installed." || echo "gh is already installed."

    [ -z $(brew list | grep pyenv) ] && brew install pyenv && echo "pyenv was installed." || echo "pyenv is already installed."
    [ -z $(which node) ] && brew install node || echo "node is already installed."

    [ ! -d "/Applications/iTerm.app" ] && brew install --cask iterm2 && echo "iterm was installed." || echo "iterm is already installed."
    [ ! -d "/Applications/Visual Studio Code.app" ] && brew install --cask visual-studio-code && echo "vscode was installed." || echo "vscode is already installed."
else # Linux
    [ -z $(which fish) ] && sudo apt-get install fish
    [ -z $(which vim) ] && sudo apt-get install vim
fi

exit 0
