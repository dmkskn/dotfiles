function av -d "Activate virtual enviroment"
    if test -d (pwd)/.venv/
        set -l venv_dir .venv
    else
        set -l venv_dir venv
    end
    source $venv_dir/bin/activate.fish
end