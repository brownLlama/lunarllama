#!/bin/bash

mv .config/lvim/lunarllama/* .config/lvim/
mv .config/lvim/lunarllama/.git .config/lvim/
rm -rf .config/lvim/lunarllama
cd || exit

sudo apt update
sudo apt install zsh
sudo apt-get install build-essential
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
