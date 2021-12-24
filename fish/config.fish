# Disable fish greeting
set fish_greeting

# Local
set -x LC_ALL en_US.UTF-8

# Don't write .pyc files
set -x PYTHONDONTWRITEBYTECODE 1

set -x PYTHONSTARTUP $HOME/.pythonstartup.py

# Set vim as the default editor
set -gx EDITOR vim

# Pyenv
# set fish_user_paths $HOME/.pyenv $fish_user_paths
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

# Load pyenv automatically by appending
# the following to ~/.config/fish/config.fish:
status is-login; and pyenv init --path | source
pyenv init - | source

# Pipx
set fish_user_paths $HOME/.local/bin $fish_user_paths

# Poetry
set fish_user_paths ~/.poetry/bin $fish_user_paths

# lsregister
set fish_user_paths "/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support" $fish_user_paths

# Pipenv
set -x PIPENV_VENV_IN_PROJECT "enabled"

if test -e $HOME/.tmdb_api_key
    source .tmdb_api_key
end