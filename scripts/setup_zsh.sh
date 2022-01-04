#!/bin/bash

# PREREQUISITE: install zsh and fonts
# sudo -S apt install zsh git wget fonts-powerline fonts-firacode

ZSH_DIR=~/.zsh
OUTFILE=~/.zshrc.add-me

echo '### add this to your ~/.zshrc ###' >> $OUTFILE
echo >> $OUTFILE

echo "export ZSH=$ZSH_DIR" >> $OUTFILE


# setup extensions
## zsh-autosuggestions
URL=https://github.com/zsh-users/zsh-autosuggestions
NAME=$(basename "$URL")
git clone $URL $ZSH_DIR/plugins/$NAME
echo "source \$ZSH/plugins/$NAME/$NAME.zsh" >> $OUTFILE 

URL=https://github.com/hcgraf/zsh-sudo
NAME=$(basename "$URL")
git clone $URL $ZSH_DIR/plugins/$NAME
echo "source \$ZSH/plugins/$NAME/sudo.plugin.zsh" >> $OUTFILE 

URL=https://github.com/arzzen/calc.plugin.zsh
NAME=$(basename "$URL")
git clone $URL $ZSH_DIR/plugins/$NAME
echo "source \$ZSH/plugins/$NAME/$NAME" >> $OUTFILE 


URL=https://github.com/marlonrichert/zsh-autocomplete
NAME=$(basename "$URL")
git clone $URL $ZSH_DIR/plugins/$NAME
echo "source \$ZSH/plugins/$NAME/$NAME.plugin.zsh" >> $OUTFILE 


# # setup themes
# ## powerlevel10k
URL=https://github.com/romkatv/powerlevel10k
NAME=$(basename "$URL")
git clone $URL $ZSH_DIR/themes/$NAME
echo "source \$ZSH/themes/$NAME/$NAME.zsh-theme" >> $OUTFILE 

echo >> $OUTFILE 
echo >> $OUTFILE 
echo >> $OUTFILE 


