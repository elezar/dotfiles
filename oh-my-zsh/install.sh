#!/bin/bash
OH_MY_ZSH_PATH=$HOME/.oh-my-zsh

if [ ! -d $OH_MY_ZSH_PATH ]
then
git clone git://github.com/robbyrussell/oh-my-zsh.git $OH_MY_ZSH_PATH
fi

echo "› upgrade oh-my-zsh"
env ZSH=$OH_MY_ZSH_PATH DISABLE_UPDATE_PROMPT=$DISABLE_UPDATE_PROMPT zsh -f $OH_MY_ZSH_PATH/tools/check_for_upgrade.sh


