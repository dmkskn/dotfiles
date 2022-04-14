set -x PYTHONDONTWRITEBYTECODE 1
set -x PYTHONSTARTUP $HOME/.pythonstartup.py

# PYENV
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
