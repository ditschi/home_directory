#!/bin/python3

import os
import sys
import subprocess

"""
# backup existing config
mv ~/.zshconfig ~/.zshconfig.template

# install zsh and fonts
sudo apt install zsh fonts-powerline

# install oh-my-zsh -- https://github.com/ohmyzsh/ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# install autosuggestions-plugin -- https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

mv mv ~/.zshconfig.template ~/.zshconfig
"""

def main():
    pass


if __name__ == "__main__":
    main()
