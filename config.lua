lvim.format_on_save = true

lvim.plugins = {
	{ "christoomey/vim-tmux-navigator" },
	{ "matze/vim-move" },
}

reload("lunarllama.core.keymaps")
reload("lunarllama.core.options")
reload("lunarllama.core.nvimtree")
reload("lunarllama.core.which-key")

reload("lunarllama.plugins.mason")
reload("lunarllama.plugins.null-ls")
reload("lunarllama.plugins.hop")
