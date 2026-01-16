vim.pack.add({
    { src = 'https://github.com/stevearc/oil.nvim' },
    { src = "https://github.com/echasnovski/mini.icons" },
    --{src = "https://github.com/nvim-tree/nvim-web-devicons"},-- use if prefer nvim-web-devicons
})

require("oil").setup({
    default_file_explorer = true,
    columns = { "icon" },
    view_options = {
        show_hidden = true,
    },
})
