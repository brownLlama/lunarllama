--  import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

-- import mason-null-ls plugin afely
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

-- enable mason
mason.setup()

mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		"lua_ls",
		"pyright", -- python
		"dockerls", -- docker
		"docker_compose_language_service", -- docker compose
		"yamlls", -- YAML
		"terraformls", -- terraform
		"tflint", -- terraform
		"jsonls", -- json
		"remark_ls", -- markdown
		"bashls", -- bash
		"grammarly", -- grammarly
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"prettier", -- ts/js formatter
		"stylua", -- lua formatter
		"luacheck", -- lua diagonostic
		"beautysh", --sh
		"black", -- python
		"pydocstyle", -- python
		"isort", -- python
		"flake8", -- python
		"sqlfmt", -- sql
		"terraform_fmt", -- terraform
		"terraform_validate", -- terraform
		"jsonlint", -- json
		"hadolint", -- Dockerfile
		"markdownlint", -- markdown
		"yamlfmt", -- YAML
		"yamlfix", -- YAML
		"yamllint", -- yaml
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})
