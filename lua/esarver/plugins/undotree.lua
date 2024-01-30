return {
    {
        'mbbill/undotree',
        keys = {
            {"<leader>u", modes={"n"}, vim.cmd.UndotreeToggle, desc="UndoTree: Toggle"}
        }
    },
}
