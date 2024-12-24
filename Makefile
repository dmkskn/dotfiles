all: init fish vim git python

init:
	bash init.sh

fish:
	rm -rf ~/.config/fish/
	mkdir ~/.config/fish/

	ln -s "`pwd`/fish/config.fish" ~/.config/fish/config.fish
	ln -s "`pwd`/fish/conf.d" ~/.config/fish/conf.d
	ln -s "`pwd`/fish/functions" ~/.config/fish/functions

	cat /etc/shells | grep fish > /dev/null || echo $(shell which fish) | sudo tee -a /etc/shells
	chsh -s $(shell which fish)

vim:
	rm -f ~/.vimrc
	ln -s "`pwd`/vim/vimrc" ~/.vimrc

git:
	rm -f ~/.gitconfig
	ln -s "`pwd`/git/gitconfig" ~/.gitconfig
	ln -s "`pwd`/git/gitignore" ~/.gitignore

macos:
ifeq ("$(shell uname)", "Darwin")
	bash macos/macos.sh
endif

.PHONY: init fish vim git python
