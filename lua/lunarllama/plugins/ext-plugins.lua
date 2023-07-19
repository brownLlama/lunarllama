lvim.plugins = {
	-- Vim Visual Multi
	{
		"mg979/vim-visual-multi",
		branch = "master",
	},

	-- Hop
	{
		"phaazon/hop.nvim",
		event = "BufRead",
		config = function()
			require("hop").setup()
			vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
			vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
		end,
	},

	-- Vim Tmux Navigator
	{
		"christoomey/vim-tmux-navigator",
	},

	-- Vim Move
	{
		"matze/vim-move",
	},
}
