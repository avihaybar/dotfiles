vim.g.monokaipro_filter = "spectrum"
vim.g.monokaipro_transparent = true

require("tokyonight").setup({
    style = "night",
    transparent = true,
    terminal_colors = true
})

local status, _ = pcall(vim.cmd, "colorscheme monokaipro")
if not status then
    print("Colorscheme Not Found!")
    return
end
