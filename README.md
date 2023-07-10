# lunarLlama

lunarLlama is a modified version of LunarVim, created and maintained by the administrators of LunarVim. We would like to express our gratitude to the LunarVim team for their incredible work.

In this guide, we will walk you through the installation process of lunarLlama on a GCP Ubuntu instance.

## Step 1: Cloning the Repository

Begin by cloning the lunarLlama Git repository to your local machine.

```bash
git clone https://github.com/brownLlama/lunarllama.git

```

Next, execute the following script to install `zsh` and `oh-my-zsh`.

```bash
lunarllama/./prep.sh

```

Once the script has finished running, exit the virtual machine and SSH back into it.

## Step 2: Installing Dependencies

Now, run another script that will install all the necessary dependencies for NeoVim and LunarVim.

```bash
.config/lvim/./dependencies.sh
```

## Step 3: Installing LunarVim

Install LunarVim using the following command:

```bash
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
```

## Update Instructions

To update lunarLlama with the latest changes from the GitHub repository, simply clone the repository again. All the configuration files will be downloaded, and everything will be updated accordingly.

Thank you for choosing lunarLlama! We hope you enjoy using it. If you encounter any issues or have any questions, please don't hesitate to reach out to us. Happy coding!
