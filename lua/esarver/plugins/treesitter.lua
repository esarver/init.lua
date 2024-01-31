return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            highlight = { enabled = true },
            indent = { enabled = true },
            ensure_installed = {
                "bash",
                "rust",
                "diff",
                "javascript",
                "typescript",
                "lua",
                "markdown",
                "regex",
                "yaml",
                "json",
                "python",
                "jsonc",
                "html",
                "toml",
                "c",
                "vimdoc",
                "query",
            },
        }
    },
}
