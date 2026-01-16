vim.pack.add({ { src = "https://github.com/nvim-telescope/telescope.nvim" } })


local ts = require("telescope")
ts.setup({
    defaults = {
        border = false
    }
})


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = "Telescope: Find Files" })
vim.keymap.set('n', '<leader>c', function()
    builtin.find_files { cwd = vim.fn.stdpath("config") }
end, { desc = "Edit NeoVim config" })
vim.keymap.set('n', '<C-p>', function() builtin.git_files({ show_untracked = true }) end,
    { desc = "Telescope: Find Git Files" })

vim.keymap.set('n', '<leader>*', function()
    local word = vim.fn.expand("<cword>")
    builtin.grep_string({ search = word })
end, { desc = "Telescope: Search Project for word Under Cursor" })

vim.keymap.set('n', '<leader>pWs', function()
    local word = vim.fn.expand("<cWORD>")
    builtin.grep_string({ search = word })
end, { desc = "Telescope: Search Project for WORD Under Cursor" })

vim.keymap.set('n', '<leader>s', builtin.live_grep, { desc = "Telescope: Live Grep" })
vim.keymap.set('n', '<leader>vh', builtin.help_tags, { desc = "Telescope: Search NeoVim Help Tags" })
vim.keymap.set('n', '<leader>?', builtin.keymaps, { desc = "Telescope: Find Keymaps" })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = "Telescope: Find Buffers" })
vim.keymap.set('n', '<leader>m', builtin.marks, { desc = "Telescope: Find Marks" })
vim.keymap.set('n', '<leader>r', builtin.lsp_references, { desc = "Telescope: LSP References" })
vim.keymap.set('n', '<leader>d', function() builtin.diagnostics() end, { desc = "Telescope: LSP Diagnostics" })
