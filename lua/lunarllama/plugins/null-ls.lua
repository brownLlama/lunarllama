-- import null-ls plugin safely
local setup, null_ls = pcall(require, "null-ls")
if not setup then
	return
end

-- for conciseness
local formatting = null_ls.builtins.formatting -- to setup formatters
local diagnostics = null_ls.builtins.diagnostics -- to setup linters

-- configure null_ls
null_ls.setup({
	-- setup formatters & linters
	sources = {
		--  to disable file types use
		--  "formatting.prettier.with({disabled_filetypes: {}})" (see null-ls docs)
		formatting.prettier, -- js/ts formatter
		formatting.stylua, -- lua formatter
		formatting.black, -- python formatter
		formatting.isort, -- python formatter
		formatting.terraform_fmt, --terraform
		formatting.dprint, -- toml
		formatting.beautysh, -- shell

		diagnostics.jsonlint, -- json
		diagnostics.flake8, -- python
		diagnostics.pydocstyle, -- python
		diagnostics.terraform_validate, -- terraform
		diagnostics.hadolint, -- Dockerfile
		diagnostics.markdownlint, -- markdown
		diagnostics.shellcheck, -- shell
		diagnostics.yamllint, --yaml
	},
})
