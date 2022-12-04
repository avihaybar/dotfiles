local opts = { noremap = true, silent = true, buffer = bufnr }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

local setup, lspconfig = pcall(require, "lspconfig")
if not setup then
    print("lspconfig not found")
    return
end

local setup, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not setup then
    print("cmp_nvim_lsp not found")
    return
end

local on_attach = function(client, bufnr)
    keymap("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts)
    keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
    keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
    keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
    keymap("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
    keymap("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
    keymap("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
    keymap("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
    keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
    keymap("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts)
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig["jsonls"].setup({ capabilities = capabilities, on_attach = on_attach })
lspconfig["pyright"].setup({ capabilities = capabilities, on_attach = on_attach })

