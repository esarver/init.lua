-- NOTE: This file should be included BEFORE other files to ensure everything is set
-- properly

if jit.os:find("Windows") then
    vim.g.python3_host_prog = "C:/Users/esarver1/.pyenv/pyenv-win/versions/3.10.9/python3"
end

-- Map leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set netrw options
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.g.markdown_fenced_languages = {
    "ts=typescript",
    "rust",
    "html",
    "python",
    "lua",
    "nix",
}
