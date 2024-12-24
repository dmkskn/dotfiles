#!/usr/bin/env bash

set -e

# Determine OS
OS=$(uname)

# Check if the operating system is macOS
if [ "$OS" = "Darwin" ]; then
    # Ensure Xcode Command Line Tools are installed
    [ -d "$(xcode-select --print-path)" ] || xcode-select --install

    # Install Homebrew if not already installed
    [ -z "$(which brew)" ] && curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | /bin/bash

    # Install fish shell if not already installed
    [ -z "$(which fish)" ] && brew install fish && echo "fish was installed." || echo "fish is already installed."
    
    # Install vim if not already installed
    [ -z "$(which vim)" ] && brew install vim && echo "vim was installed." || echo "vim is already installed."
    
    # Install GitHub CLI if not already installed
    [ -z "$(which gh)" ] && brew install gh && echo "gh was installed." || echo "gh is already installed."

    # Install pyenv if not already installed
    [ -z "$(which pyenv)" ] && brew install pyenv && echo "pyenv was installed." || echo "pyenv is already installed."
    
    # Install pipx if not already installed and ensure its path is set
    [ -z "$(which pipx)" ] && brew install pipx && pipx ensurepath && echo "pipx was installed." || echo "pipx is already installed."

    # Install Python tools using pipx if not already installed
    for tool in poetry black flake8 mypy; do
        [ -z "$(pipx list | grep $tool)" ] && pipx install "$tool" && echo "$tool was installed with pipx." || echo "$tool is already installed."
    done

    # Install Node.js if not already installed
    [ -z "$(which node)" ] && brew install node || echo "node is already installed."

    # Install iTerm2 if not already installed
    [ ! -d "/Applications/iTerm.app" ] && brew install --cask iterm2 && echo "iterm was installed." || echo "iterm is already installed."
    
    # Install Visual Studio Code if not already installed
    [ ! -d "/Applications/Visual Studio Code.app" ] && brew install --cask visual-studio-code && echo "vscode was installed." || echo "vscode is already installed."
else # Linux
    # Install fish shell if not already installed
    [ -z "$(which fish)" ] && sudo apt-get install fish
    
    # Install vim if not already installed
    [ -z "$(which vim)" ] && sudo apt-get install vim
fi

# The following commands are used in the script:
#
# which: locate a command
# -z: true if the length of the string is zero
# -d: true if the file exists and is a directory
# uname: print system information
# curl: transfer a URL

exit 0
