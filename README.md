# Install lunarLlama

This is editted verion of lunarvim. Please give all the credit to admins of LunarVim.

Here I'm presenting you how to install lunarLlama in GCP Ubuntu instance.

## Step 1

I like using `zsh` rather than bash, so I'm installing `zsh` and `ohmyzsh`.

```bash
sudo apt update
sudo apt install zsh
sudo apt-get install build-essential
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Step 2

In this step, I'm installing autosuggestion and syntax highlight for zsh.

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "plugins=(zsh-autosuggestions zsh-syntax-highlighting)" >> ~/.zshrc
echo "source $ZSH/oh-my-zsh.sh" >> ~/.zshrc
```

## Step 3

Now installing Homebrew to get the latest version of NeoVim. (I couldn't find a way to install `nvim v0.9`, if some1 out there finds a way, please let me know. Thanks in advance.)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/sanu_maharjan/.zprofile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

## Step 4

Last step is to install LunarVim itself.

```bash
# Installing Neovim
brew install gcc gh make npm node neovim
# Cargo (Rust)
curl https://sh.rustup.rs -sSf | sh

#LunarVim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
# Updating LunarVim dependendies
npm install -g npm@9.8.0
python3.11 -m pip install --upgrade pip

echo "export PATH=/home/sanu_maharjan/.local/bin:$PATH" >> ~/.zshrc
echo 'alias lvim="sudo -E env \"PATH=$PATH\" /home/sanu_maharjan/.local/bin/lvim"' >> ~/.zshrc
source ~/.zshrc
```
