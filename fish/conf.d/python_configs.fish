set -x PYTHONDONTWRITEBYTECODE 1

# PYENV
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
