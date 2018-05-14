#!/usr/bin/env bash


BLACK="\[\033[0;30m\]"
RED="\[\033[0;31m\]"
YELLOW="\[\033[1;33m\]"
GREEN="\[\033[0;32m\]"
PURPLE="\[\033[0;35m\]"
LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
WHITE="\[\033[1;37m\]"
BLUE="\[\033[0;34m\]"
ORANGE="\[\033[0;33m\]"
GRAY="\[\033[0;37m\]"
COLOR_NONE="\[\e[0m\]"
CYAN="\[\e[1;36m\]"

function error_code () {
  code=$1
  if [ $code != 0 ]; then
    ERROR_MESSAGE=" ${GRAY}[${code}]${COLOR_NONE}"
  else
    ERROR_MESSAGE=""
  fi
}

function set_virtualenv () {
  if test -z "$VIRTUAL_ENV" ; then
      PYTHON_VIRTUALENV=""
  else
      PYTHON_VIRTUALENV="$BLUE(`basename \"$VIRTUAL_ENV\"`)${COLOR_NONE}"
  fi
}

function set_bash_prompt () {
  
  error_code $?
  set_virtualenv

  PS1="
${GRAY}_ ${GREEN}\w${PYTHON_VIRTUALENV}${COLOR_NONE}${GRAY}${ERROR_MESSAGE}${COLOR_NONE}
\$ "
}

PROMPT_COMMAND=set_bash_prompt
