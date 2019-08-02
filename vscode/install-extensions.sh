
if ! /usr/local/bin/code --list-extensions | grep -i ms-python.python &> /dev/null; then
    /usr/local/bin/code --uninstall-extension ms-python.python &> /dev/null
fi

if ! /usr/local/bin/code --list-extensions | grep -i editorconfig.editorconfig &> /dev/null; then
    /usr/local/bin/code --uninstall-extension editorconfig.editorconfig &> /dev/null
fi

if ! /usr/local/bin/code --list-extensions | grep -i rubbersheep.gi &> /dev/null; then
    /usr/local/bin/code --uninstall-extension rubbersheep.gi &> /dev/null
fi