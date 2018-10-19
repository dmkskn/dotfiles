install: install-aliases install-completions install-bashrc install-bash-profile \
	install-vimrc install-gitconfig install-pythonrc


install-aliases:
	rm -f ~/.aliases
	ln -s "`pwd`/bash/aliases" ~/.aliases

install-completions:
	rm -f ~/.completions
	ln -s "`pwd`/bash/completions" ~/.completions

install-bashrc:
	rm -f ~/.bashrc
	ln -s "`pwd`/bash/bashrc" ~/.bashrc

install-bash-profile:
	rm -f ~/.bash_profile
	ln -s "`pwd`/bash/bash_profile" ~/.bash_profile

install-vimrc:
	rm -f ~/.vimrc
	ln -s "`pwd`/vim/vimrc" ~/.vimrc

install-gitconfig:
	rm -f ~/.gitconfig
	ln -s "`pwd`/git/gitconfig" ~/.gitconfig

install-pythonrc:
	rm -f ~/.pythonrc.py
	ln -s "`pwd`/python/pythonrc.py" ~/.pythonrc.py
