local augroup = vim.api.nvim_create_augroup
local EsarverGroup = augroup('esarver', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

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
