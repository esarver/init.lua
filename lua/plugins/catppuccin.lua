vim.pack.add({ { src = "https://github.com/catppuccin/nvim" } })

require('catppuccin').setup({
    flavour = "mocha",
    transparent_background = true,
    float = {
        solid = true,
    },
})

vim.cmd.colorscheme "catppuccin"

--ColorMyPencils()
