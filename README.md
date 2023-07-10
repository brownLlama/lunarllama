# Install lunarLlama

This is editted verion of lunarvim. Please give all the credit to admins of LunarVim.

Here I'm presenting you how to install lunarLlama in GCP Ubuntu instance.

## Step 1

First clone this git repo.

```bash
git clone https://github.com/brownLlama/lunarllama.git

```

and now run the following script to install `zsh` and `oh-my-zsh`

```bash
lunarllama/./prep.sh

```

Once the the script is completed, then quit the VM and ssh into it back.

## Step 2

Now run another script, that install all the required dependencies for install NeoVim and LunarVim.

```bash
.config/lvim/./dependencies.sh
```

## Step 3

Install LunarVim by following command:

```bash
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
```
