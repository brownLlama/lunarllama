#!/bin/bash

mkdir -p .config && cd .config || exit
mkdir -p lvim
cd || exit
mv lunarllama/* .config/lvim/
mv lunarllama/.git .config/lvim/
rm -rf lunarllama

sudo apt update -y
sudo apt install -y zsh
sudo apt-get install -y build-essential
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
