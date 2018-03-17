install: install-aliases install-bash-profile


install-aliases:
	rm -f ~/.aliases
	ln -s `pwd`/aliases ~/.aliases


install-bash-profile:
	rm -f ~/.bash_profile
	ln -s `pwd`/bash_profile ~/.bash_profile