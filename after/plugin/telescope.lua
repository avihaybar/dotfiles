local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

local setup, telescope = pcall(require, "telescope")
if not setup then
    return
end


local setup, actions = pcall(require, "telescope.actions")
if not setup then
    return
end

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-k>"]  = actions.move_selection_previous,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            }
        }
    }
})

telescope.load_extension("fzf")

keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
keymap("n", "<leader>fn", "<cmd>Telescope find_files<CR>", opts)
