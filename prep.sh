#!/bin/bash

mkdir .config && cd .config || exit
mkdir lvim && cd lvim || exit
cd || exit
mv lunarllama/{..}* .config/lvim/
rm -rf 1lunarllama

sudo apt update
sudo apt install zsh
sudo apt-get install build-essential
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
