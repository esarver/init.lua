return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "plenary",
        },
        keys = {
            {"<leader>pf", modes = {"n"}, require('telescope.builtin').find_files, desc="Telescope: Find Files" },
            {"<C-p>", modes = {"n"}, require('telescope.builtin').git_files, desc="Telescope: Git Files"},
            {"<leader>ps", modes = {"n"}, function()
                require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ")})
            end, desc = "Telescope: Grep String"},
        }
	},
}
