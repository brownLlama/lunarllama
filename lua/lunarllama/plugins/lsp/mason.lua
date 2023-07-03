--  import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
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
        -- "sqlls", -- sql
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
        "black", -- python
        "pydocstyle", -- python
        "isort", -- python
        "flake8", -- python
        "sqlfmt", -- sql
        "yamlfix", -- YAML
        "yamlfmt", -- YAML
        "terraform_fmt", -- terraform
        "terraform_validate", -- terraform
        "jsonlint", -- json
        "hadolint", -- Dockerfile
        "markdownlint", -- markdown
    },
    -- auto-install configured formatters & linters (with null-ls)
    automatic_installation = true,
})
