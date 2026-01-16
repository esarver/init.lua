function ColorMyPencils(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

vim.pack.add({ { src = "https://github.com/ellisonleao/gruvbox.nvim" } })

require('gruvbox').setup({
    disable_background = true,
})

vim.cmd("colorscheme gruvbox")

ColorMyPencils()
