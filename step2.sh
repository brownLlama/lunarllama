#!/bin/zsh

# Insatlling autosuggestions and syntax highlight for zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "plugins=(zsh-autosuggestions zsh-syntax-highlighting)" >> ~/.zshrc
echo "source $ZSH/oh-my-zsh.sh" >> ~/.zshrc

# Installing Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/sanu_maharjan/.zprofile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Installing pre-requisits for Neovim
brew install gcc gh make npm node neovim
# Cargo (Rust)
curl https://sh.rustup.rs -sSf | sh
. "$HOME/.cargo/env"

# Updating necessary libraries
npm install -g npm@9.8.0
python3.11 -m pip install --upgrade pip

echo "export PATH=/home/sanu_maharjan/.local/bin:$PATH" >> ~/.zshrc
echo 'alias lvim="sudo -E env \"PATH=$PATH\" /home/sanu_maharjan/.local/bin/lvim"' >> ~/.zshrc
. ~/.zshrc
