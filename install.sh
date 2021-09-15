#!/bin/sh
# not completed yet
# do not use!!

CONFIG_DIR=$HOME/.config

if [ -d "$HOME/.config" ]; then
    echo "[test] ~/.config exists!"
fi

# if .config exists, dont do anything; else, mkdir $HOME/.config
# if -d $HOME/.config/zsh, dont do anything; else, mkdir CONFIG_DIR/zsh
# if -d $HOME/.config/nvim, dont do anything; else, mkdir CONFIG_DIR/nvim
# zshenv symlink
# echo $zdotdir to .zshenv symlink in .config
# only nvim, zsh as of now
# if git is not installed, echo "git is not installed. please install git and re-run this script"
# install vim plug
# nvim +PlugInstall +qall ; echo "Installed nvim plugins" (if successful, else echo "failed to install nvim plugins")
# make every existing directory to *.backup
#
# if [ $? -eq 0 ]; then
    # echo OK
# else
    # echo FAIL
# fi
