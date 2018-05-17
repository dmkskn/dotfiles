#!/usr/bin/env bash

#
export EDITOR=vim
export HOSTS="/private/etc/hosts"
export TMDB_API_KEY=$(<~/.tmdb_api_key)

export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

export PYTHONDONTWRITEBYTECODE=1

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;


source ~/.bashrc
source ~/.aliases
source ~/.completions

if [ -f ~/.bash_local ]; then
   source ~/.bash_local
fi

