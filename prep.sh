#!/bin/bash

mkdir -p .config && cd .config || exit
mkdir -p lvim
cd || exit
mv lunarllama/* .[^.]* .config/lvim/
rm -rf lunarllama

sudo apt update
sudo apt install zsh
sudo apt-get install build-essential
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
