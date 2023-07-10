<h1 align="center">Hi 👋, I'm brown Llama </h1>
<h3 align="center">A passionate Analytics Engineer</h3>

# lunarLlama

lunarLlama is a personalized version of LunarVim. Please visit [here](https://www.lunarvim.org/) to get more detail on LunarVim. I would like to express my gratitude to the LunarVim admins and team for their incredible work.

In this guide, I'll walk you through the installation process of lunarLlama on a GCP Ubuntu instance with a small pinch of my personal taste.

## Step 1: Cloning the Repository

Create a GCP instance and begin by cloning the lunarLlama Git repository to the instance.

```bash
git clone https://github.com/brownLlama/lunarllama.git

```

Next, execute the following script to install `zsh` and `oh-my-zsh`.

```bash
lunarllama/./prep.sh

```

Once the script has finished running, exit the instance and SSH back into it.

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

To update lunarLlama with the latest changes from the GitHub repository, simply clone the repository again by going to `.config/lvim`. All the configuration files will be downloaded, and everything will be updated accordingly.

Thank you for choosing lunarLlama! I hope you enjoy using it. If you encounter any issues or have any questions, please don't hesitate to reach out to us. Happy coding!
