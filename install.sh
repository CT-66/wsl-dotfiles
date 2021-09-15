#!/bin/sh
# not completed yet
# do not use!!

if [ -d "$HOME/.config" ]; then
    echo "[test] ~/.config exists!"
fi

# zshenv symlink
# echo $zdotdir to .zshenv symlink in .config
# only nvim, zsh as of now
# nvim +PlugInstall +qall ; echo "Installed nvim plugins" (if successful, else echo "failed to install nvim plugins")
# make every existing directory to *.backup
#
# if [ $? -eq 0 ]; then
    # echo OK
# else
    # echo FAIL
# fi
