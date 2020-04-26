for EXTENSION in $(cat extensions.txt)
do
    if ! /usr/local/bin/code --list-extensions | grep -i $EXTENSION &> /dev/null; then
    /usr/local/bin/code --install-extension $EXTENSION &> /dev/null
    fi
done