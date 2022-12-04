local setup, mason = pcall(require, "mason")
if not setup then
    print("mason not found")
    return
end

local setup, mason_lspconfig = pcall(require, "mason-lspconfig")
if not setup then
    print("mason-lspconfig not found")
    return
end

local setup, mason_null_ls = pcall(require, "mason-null-ls")
if not setup then
    print("mason-null-ls not found")
    return
end

mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
        "ansiblels",
        "bashls",
        "clangd",
        "dockerls",
        "grammarly",
        "jsonls",
        "marksman",
        "pyright",
        "rust_analyzer",
        "taplo",
        "terraformls",
        "yamlls",
    }
})


mason_null_ls.setup({
    ensure_installed = {
        "black",
        "isort",
        -- "pylint",
        -- "mypy",
        "ruff",
        "vulture",

    }
})
