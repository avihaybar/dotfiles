local o = vim.opt

-- Line Numbers
o.number = true
o.relativenumber = true

-- Scroll
o.scrolloff = 8

-- Indentations
o.tabstop = 4
o.softtabstop = 2
o.shiftwidth = 4
o.expandtab = true
o.smartindent = true
o.wrap = false

-- Search
o.ignorecase = true
o.smartcase = true

-- Visuals
o.cursorline = true
o.termguicolors = true
o.background = "dark"
o.signcolumn = "yes"
o.isfname:append("@-@")
o.cmdheight = 1
o.colorcolumn = "80" 

-- Splits
o.splitright = true
o.splitbelow = true

-- Backups
o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.nvim/undodir"
o.undofile = true

-- Misc
o.backspace = "indent,eol,start"
o.iskeyword:append("-")
o.shortmess:append("c")
o.updatetime = 50
