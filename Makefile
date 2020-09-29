all: init fish sh bash vim git vscode python macos

init:
	bash init.sh

fish:
	rm -rf ~/.config/fish/
	mkdir ~/.config/fish/

	ln -s "`pwd`/fish/config.fish" ~/.config/fish/config.fish
	ln -s "`pwd`/fish/conf.d" ~/.config/fish/conf.d
	ln -s "`pwd`/fish/functions" ~/.config/fish/functions

	cat /etc/shells | grep /usr/local/bin/fish > /dev/null || echo /usr/local/bin/fish | sudo tee -a /etc/shells
	chsh -s /usr/local/bin/fish

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
	if [ -e /Applications/Visual\ Studio\ Code.app ]; then\
		bash `pwd`/vscode/install-extensions.sh;\
		rm -f ~/Library/Application\ Support/Code/User/settings.json;\
		ln -s `pwd`/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json;\
		rm -rf ~/Library/Application\ Support/Code/User/snippets;\
		ln -s `pwd`/vscode/snippets ~/Library/Application\ Support/Code/User/snippets;\
	fi


python:
	rm -f ~/.pythonstartup.py

	ln -s "`pwd`/python/pythonstartup.py" ~/.pythonstartup.py


macos:
	bash macos/macos.sh


.PHONY: init fish sh bash vim git vscode python macos
