#!/usr/bin/env bash

rm -f ~/.bash_local
[ -f ~/Documents/.bash_local ] && ln -s ~/Documents/.bash_local ~/.bash_local || touch ~/.bash_local

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

rm -f ~/.vimrc
ln -s "`pwd`/vim/vimrc" ~/.vimrc

rm -f ~/.gitconfig
ln -s "`pwd`/git/gitconfig" ~/.gitconfig

rm -f ~/.pythonrc.py
ln -s "`pwd`/python/pythonrc.py" ~/.pythonrc.py

bash `pwd`/vscode/install-extensions.sh
rm -f ~/Library/Application\ Support/Code/User/settings.json
ln -s `pwd`/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

rm -f ~/Library/Application\ Support/Code/User/snippets/django-snippets.code-snippets
ln -s `pwd`/vscode/snippets/django-snippets.code-snippets ~/Library/Application\ Support/Code/User/snippets/django-snippets.code-snippets

read -p "Install packages (y/n): " INSTALL_PACKAGES
read -p "Install macOS settings (y/n): " INSTALL_MACOS_SETTINGS

[ "$INSTALL_PACKAGES" == "y" ] && bash "`pwd`/packages/packages.sh"
[ "$INSTALL_MACOS_SETTINGS" == "n" ] && bash "`pwd`/macos/macos.sh"