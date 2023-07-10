# Install lunarLlama

This is editted verion of lunarvim. Please give all the credit to admins of LunarVim.

Here I'm presenting you how to install lunarLlama in GCP Ubuntu instance.

## Step 1

First create .config/lvim directory and inside the directory clone the git repo.

```bash
mkdir .config && cd .config
```

```bash
mkdir lvim && cd lvim

```

```bash
git clone https://github.com/brownLlama/lunarllama.git

```

```bash
cd

```

Then run prep.sh by following command:

```bash
.config/lvim/lunarllama/prep.sh
```

Once the the script is completed, then quit the VM and ssh into it back.

## Step 2

Now run another script, that install all the required dependencies for install NeoVim and LunarVim.

```bash
.config/lvim/lunarllama/dependencies.sh
```

## Step 3

Install LunarVim by following command:

```bash
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
```
