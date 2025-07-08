require("esarver.set")
require("esarver.remap")
require("esarver.lazy")
require("esarver.floating-terminal")

local augroup = vim.api.nvim_create_augroup
local EsarverGroup = augroup('esarver', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({ "BufWritePre" }, {
    group = EsarverGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})


vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.diagnostic.config({virtual_lines = { current_line = true }})

local is_git_dir = function()
    if jit.os:find("Windows") then
        return os.execute('git rev-parse --is-inside-work-tree | Out-Null')
    else
        return os.execute('git rev-parse --is-inside-work-tree >> /dev/null 2>&1')
    end
end

vim.api.nvim_create_autocmd('VimEnter', {
    callback = function()
        local bufferPath = vim.fn.expand('%:p')
        if vim.fn.isdirectory(bufferPath) ~= 0 then
            local ts_builtin = require('telescope.builtin')
            vim.api.nvim_buf_delete(0, { force = true })
            if is_git_dir() == 0 then
                ts_builtin.git_files({ show_untracked = true })
            else
                ts_builtin.find_files()
            end
        end
    end,
})
