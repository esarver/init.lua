return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "plenary",
        },
        keys = {
            { "<leader>pf", mode = { "n" }, function() require('telescope.builtin').find_files() end, desc = "Telescope: Find Files" },
            { "<C-p>",      mode = { "n" }, function() require('telescope.builtin').git_files() end, desc = "Telescope: Git Files" },
            {
                "<leader>ps",
                mode = { "n" },
                function()
                    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })
                end,
                desc = "Telescope: Grep String"
            },
        }
    },
}
