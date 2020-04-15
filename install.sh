#!/usr/bin/env bash

read -p "Install packages (y/n): " INSTALL_PACKAGES
read -p "Install macOS settings (y/n): " INSTALL_MACOS_SETTINGS

[ "$INSTALL_PACKAGES" == "y" ] && bash "`pwd`/packages/packages.sh"
[ "$INSTALL_MACOS_SETTINGS" == "n" ] && bash "`pwd`/macos/macos.sh"

[ -e ~/Documents/.ssh ] && ln -s ~/Documents/.ssh ~/.ssh &> /dev/null || echo "👉 ~/.ssh already exists. "

rm -f ~/.bash_local
[ -f ~/Documents/.bash_local ] && ln -s ~/Documents/.bash_local ~/.bash_local &> /dev/null || touch ~/.bash_local

rm -f ~/.profile
ln -s "`pwd`/sh/profile" ~/.profile

rm -f ~/.aliases
ln -s "`pwd`/bash/aliases" ~/.aliases

rm -f ~/.functions
ln -s "`pwd`/bash/functions" ~/.functions

rm -f ~/.bashrc
ln -s "`pwd`/bash/bashrc" ~/.bashrc

rm -f ~/.bash_profile
ln -s "`pwd`/bash/bash_profile" ~/.bash_profile

rm -f ~/.config/fish/config.fish
ln -s "`pwd`/fish/config.fish" ~/.config/fish/config.fish

rm -rf ~/.config/fish/functions
mkdir ~/.config/fish/functions
for f in $(ls `pwd`/fish/functions/); do
    ln -s "`pwd`/fish/functions/$(basename $f)" "$HOME/.config/fish/functions/$(basename $f)"
done

rm -rf ~/.config/fish/prompt
mkdir ~/.config/fish/prompt
for f in $(ls `pwd`/fish/prompt/); do
    ln -s "`pwd`/fish/prompt/$(basename $f)" "$HOME/.config/fish/prompt/$(basename $f)"
done

rm -f ~/.gitconfig
ln -s "`pwd`/git/gitconfig" ~/.gitconfig

rm -f ~/.pythonrc.py
ln -s "`pwd`/python/pythonrc.py" ~/.pythonrc.py

bash `pwd`/vscode/install-extensions.sh

rm -f ~/Library/Application\ Support/Code/User/settings.json
ln -s `pwd`/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

rm -rf ~/Library/Application\ Support/Code/User/snippets
ln -s `pwd`/vscode/snippets ~/Library/Application\ Support/Code/User/snippets
