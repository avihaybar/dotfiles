local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

local setup, treesitter = pcall(require, "nvim-treesitter.configs")
if not setup then
    return
end

treesitter.setup({
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
        "python",
        "json",
        "yaml",
        "toml",
        "dockerfile",
        "bash",
        "c",
        "cpp",
        "cuda",
        "glsl",
        "hlsl",
        "rust",
        "lua",
        "comment",
    },
    auto_install = true,
})
