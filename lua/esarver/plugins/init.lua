return {
    {
        "nvim-lua/plenary.nvim",
	name = "plenary",
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "plenary",
	},
    },
    {
        "folke/trouble.nvim",
    },
    {
        "nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
    },
    {
         "ellisonleao/gruvbox.nvim",
	 name = "gruvbox",
    },
    {
        "LazyVim/LazyVim",
	opts = {
            colorscheme = "gruvbox",
        },
    },
    { 'theprimeagen/harpoon' },
    { 'mbbill/undotree' },
    { 'tpope/vim-fugitive' },

}
