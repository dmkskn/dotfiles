#!/usr/bin/env bash

#
export EDITOR=vim
export HOSTS="/private/etc/hosts"
export TMDB_API_KEY=$(<~/.tmdb_api_key)


# prompt
RED="[31m"
GREEN="[32m"
DEFAULT="[00m"
PS1="\e${GREEN}\u "     # u
PS1+="\e${DEFAULT}at "  # at
PS1+="\e${GREEN}\h "    # h
PS1+="\e${DEFAULT}in "  # in
PS1+="\e${RED}\w"       # w
PS1+="\e${DEFAULT}\n$ " # \n$
export PS1;


# Autocorrect typos in path names when using `cd`
shopt -s cdspell;


source ~/.aliases



