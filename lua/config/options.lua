vim.opt.nu = true
--vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.inccommand = 'split'

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "88"

vim.opt.listchars = {
    space = '·',
    tab = '<->',
    eol = '↲',
    leadmultispace = '···|',
}
vim.opt.list = true

vim.g.netrw_liststyle = 3

vim.filetype.add({
    extension = {
        tsp = 'lua',
    },
})

vim.opt.cursorline = true

-- Put rounded borders around all floats (including hover help floats)
vim.o.winborder ='rounded'

-- This sets the following:
--  - Don't insert text from the first completion option
--  - Automatically highlight the first option
--  - use the fuzzy finder
--  - show additional information in a popup, not a new window
vim.o.completeopt = "noinsert,menuone,fuzzy,popup"

vim.opt.splitright = true
vim.opt.splitbelow = true
