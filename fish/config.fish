# Disable fish greeting
set fish_greeting

# Local
set -x LC_ALL en_US.UTF-8

# Don't write .pyc files
set -x PYTHONDONTWRITEBYTECODE 1

# Set Visual Studio Code as the default editor
set -gx EDITOR "code -w"

# Load my prompt settings
for f in ~/.config/fish/prompt/*.fish
    source $f
end