local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- Map leader to space
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- clear highlights
keymap("n", "<leader>c", "<cmd>nohl<CR>", opts)

-- delete chars without copy to buffer
keymap("n", "x", '"_x', opts)

-- Navigate on screen center
keymap("n", "<c-d>", "<c-d>zz", opts)
keymap("n", "<c-u>", "<c-u>zz", opts)
-- keymap("n", "n", "nzzv", opts)
-- keymap("n", "N", "Nzzv", opts)

-- Change number value
keymap("n", "<leader>+", "<C-a>", opts)
keymap("n", "<leader>-", "<C-x>", opts)

-- Split Windows
keymap("n", "<leader>sv", "<C-w>v", opts)
keymap("n", "<leader>sh", "<C-w>s", opts)
keymap("n", "<leader>ss", "<cmd>close<CR>", opts)
keymap("n", "<leader>s<right>", "<C-w>v", opts)
keymap("n", "<leader>s<down>", "<C-w>s", opts)

-- Window Nav
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-Left>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-Right>", "<C-w>l", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-Down>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-Up>", "<C-w>l", opts)

-- Visual indentation
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Visual move lines up/down
keymap("x", "J", "<cmd>move '>+1<CR>gv-gv", opts)
keymap("x", "K", "<cmd>move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", "<cmd>move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", "<cmd>move '<-2<CR>gv-gv", opts)
keymap("x", "<A-Down>", "<cmd>move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Up>", "<cmd>move '<-2<CR>gv-gv", opts)

-- Terminal Tabs Nav
keymap("n", "<leader>to", "<cmd>tabnew<CR>", opts)
keymap("n", "<leader>tt", "<cmd>tabclose<CR>", opts)
keymap("n", "<leader>tn", "<cmd>tabn<CR>", opts)
keymap("n", "<leader>tp", "<cme>tabp<CR>", opts)
