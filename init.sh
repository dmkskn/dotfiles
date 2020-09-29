#!/usr/bin/env bash

set -e

if [ "$(uname)" = "Darwin" ]; then
    [ -d $(xcode-select --print-path) ] || xcode-select --install
    [ -z $(which brew) ] && curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | /bin/bash
    [ -n $(brew tap | grep "homebrew/cask") ] && brew tap homebrew/cask
    [ -z $(which fish) ] && brew install fish
    [ -z $(which emacs) ] && brew install emacs
    [ -z $(brew list --cask | grep iterm2) ] && brew cask install iterm2
    [ -z $(brew list --cask | grep visual-studio-code) ] && brew cask install visual-studio-code
else # Linux
    [ -z $(which fish) ] && sudo apt-get install fish
    [ -z $(which emacs) ] && sudo apt-get install emacs
fi

exit 0
