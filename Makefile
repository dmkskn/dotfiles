all: fish sh bash vim git vscode python macos

fish:
	rm -rf ~/.config/fish/
	mkdir ~/.config/fish/

	ln -s "`pwd`/fish/config.fish" ~/.config/fish/config.fish
	ln -s "`pwd`/fish/conf.d" ~/.config/fish/conf.d
	ln -s "`pwd`/fish/functions" ~/.config/fish/functions

	cat /etc/shells | grep fish > /dev/null || echo $(shell which fish) | sudo tee -a /etc/shells
	chsh -s $(shell which fish)

sh:
	rm -f ~/.profile
	ln -s "`pwd`/sh/profile" ~/.profile

bash: sh
	rm -f ~/.bash_local
	[ -f ~/Documents/.bash_local ] && ln -s ~/Documents/.bash_local ~/.bash_local &> /dev/null || touch ~/.bash_local

	rm -f ~/.aliases
	ln -s "`pwd`/bash/aliases" ~/.aliases

	rm -f ~/.functions
	ln -s "`pwd`/bash/functions" ~/.functions

	rm -f ~/.bashrc
	ln -s "`pwd`/bash/bashrc" ~/.bashrc

	rm -f ~/.bash_profile
	ln -s "`pwd`/bash/bash_profile" ~/.bash_profile

	rm -f ~/.pyenvstartup
	ln -s "`pwd`/bash/pyenvstartup" ~/.pyenvstartup

vim:
	rm -f ~/.vimrc
	ln -s "`pwd`/vim/vimrc" ~/.vimrc

git:
	rm -f ~/.gitconfig
	ln -s "`pwd`/git/gitconfig" ~/.gitconfig

vscode:
ifneq ("$(wildcard /Applications/Visual\ Studio\ Code.app)", "")
	bash `pwd`/vscode/install-extensions.sh
	rm -f $(HOME)/Library/Application\ Support/Code/User/settings.json
	ln -s `pwd`/vscode/settings.json $(HOME)/Library/Application\ Support/Code/User/settings.json
	rm -rf $(HOME)/Library/Application\ Support/Code/User/snippets
	ln -s `pwd`/vscode/snippets $(HOME)/Library/Application\ Support/Code/User/snippets
endif

python:
	rm -f ~/.pythonstartup.py
	ln -s "`pwd`/python/pythonstartup.py" ~/.pythonstartup.py

macos:
ifeq ($(shell uname), Darwin)
	bash macos/macos.sh
endif


.PHONY: fish sh bash vim git vscode python macos
