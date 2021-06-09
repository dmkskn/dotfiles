#!/usr/bin/env bash

set -e

if [ "$(uname)" = "Darwin" ]; then
    [ -d $(xcode-select --print-path) ] || xcode-select --install
    [ -z $(which brew) ] && curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | /bin/bash
    [ -n $(brew tap | grep "homebrew/cask") ] && brew tap homebrew/cask
    
    [ -z $(which fish) ] && brew install fish
    [ -z $(which vim) ] && brew install vim
    [ -z $(which gh) ] && brew install gh

    [ -n $(brew list | grep python) ] && brew install python
    [ -z $(brew list --cask | grep julia) ] brew install --cask julia
    [ -z $(which node) ] && brew install node

    [ ! -d "/Applications/iTerm.app" ] && brew install --cask iterm2
    [ ! -d "/Applications/Visual Studio Code.app" ] && brew install --cask visual-studio-code
else # Linux
    [ -z $(which fish) ] && sudo apt-get install fish
    [ -z $(which vim) ] && sudo apt-get install vim
fi

exit 0
