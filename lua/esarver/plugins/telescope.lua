return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        local ts = require("telescope")
        ts.setup({})

        ts.load_extension("git_worktree")

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Telescope: Find Files" })
        vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "Telescope: Find Git Files" })

        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end, { desc = "Telescope: Search Project for word Under Cursor" })

        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end, { desc = "Telescope: Search Project for WORD Under Cursor" })

        vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = "Telescope: Live Grep" })
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, { desc = "Telescope: Search NeoVim Help Tags" })
        vim.keymap.set('n', '<leader>?', builtin.keymaps, { desc = "Telescope: Find Keymaps" })
        vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = "Telescope: Find Buffers" })
        vim.keymap.set('n', '<leader>m', builtin.marks, { desc = "Telescope: Find Marks" })
        vim.keymap.set('n', '<leader>lr', builtin.lsp_references, { desc = "Telescope: LSP References" })
        vim.keymap.set('n', '<leader>ld', function() builtin.diagnostics() end, { desc = "Telescope: LSP Diagnostics" })
        vim.keymap.set('n', '<leader>wc', ts.extensions.git_worktree.create_git_worktree,
            { desc = "Telescope: Git Worktree Create" })
        vim.keymap.set('n', '<leader>wt', ts.extensions.git_worktree.git_worktree,
            { desc = "Telescope: Git Worktree" })
    end
}
