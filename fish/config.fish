# Disable fish greeting
set fish_greeting

# Local
set -x LC_ALL en_US.UTF-8

# Don't write .pyc files
set -x PYTHONDONTWRITEBYTECODE 1

# Set vim as the default editor
set -gx EDITOR vim

# Load my prompt settings
for f in ~/.config/fish/prompt/*.fish
    source $f
end

# pyenv init
source ~/.config/fish/pyenvstartup.fish

# pipx virtual enviroment location
set fish_user_paths /Users/home/.local/bin $fish_user_paths