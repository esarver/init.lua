return {
    {
        'tpope/vim-fugitive',
        keys = {
            {"<leader>gs", modes={"n"}, vim.cmd.Git, desc="Fugitive: Open Git"}
        }
    }
}
