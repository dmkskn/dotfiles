
if ! /usr/local/bin/code --list-extensions | grep -i ms-python.python &> /dev/null; then
    /usr/local/bin/code --install-extension ms-python.python &> /dev/null
fi

if ! /usr/local/bin/code --list-extensions | grep -i editorconfig.editorconfig &> /dev/null; then
    /usr/local/bin/code --install-extension editorconfig.editorconfig &> /dev/null
fi

if ! /usr/local/bin/code --list-extensions | grep -i rubbersheep.gi &> /dev/null; then
    /usr/local/bin/code --install-extension rubbersheep.gi &> /dev/null
fi

if ! /usr/local/bin/code --list-extensions | grep -i bmalehorn.vscode-fish &> /dev/null; then
    /usr/local/bin/code --install-extension bmalehorn.vscode-fish &> /dev/null
fi

if ! /usr/local/bin/code --list-extensions | grep -i dnicolson.binary-plist &> /dev/null; then
    /usr/local/bin/code --install-extension bmalehorn.vscode-fish &> /dev/null
fi