#!/bin/bash

# PREREQUISITE: install zsh and fonts
sudo -S apt install zsh git wget autojump fzf fonts-powerline fonts-firacode
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

ZSH_DIR=~/.zsh
OUTFILE=~/.zshrc.add-me

curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

echo '### add this to your ~/.zshrc ###' >> $OUTFILE
echo >> $OUTFILE
echo "# load customisation" >> $OUTFILE
echo "export ZSH=$ZSH_DIR" >> $OUTFILE
echo "source $ZSH/config/00_LOADER.zsh" >> $OUTFILE
echo >> $OUTFILE
echo >> $OUTFILE
echo >> $OUTFILE
