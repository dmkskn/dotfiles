#!/usr/bin/env bash

#
export EDITOR=vim
export HOSTS="/private/etc/hosts"
export TMDB_API_KEY=$(<~/.tmdb_api_key)

export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;


source ~/.bashrc
source ~/.aliases
source ~/.completions



