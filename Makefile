install: install-aliases install-bashrc install-bash-profile


install-aliases:
	rm -f ~/.aliases
	ln -s `pwd`/aliases ~/.aliases

install-bashrc:
	rm -f ~/.bashrc
	ln -s `pwd`/bashrc ~/.bashrc

install-bash-profile:
	rm -f ~/.bash_profile
	ln -s `pwd`/bash_profile ~/.bash_profile