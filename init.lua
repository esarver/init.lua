require("config.globals")
require("config.options")
require("commands.floating-terminal")
require("config.keymap")
require("config.autocmd")

require("plugins.plenary") -- a common dependency for nvim plugins

require("plugins.cloak")          --hide those secrets!
require("plugins.fidget")         --LSP Status in the corner
require("plugins.fugitive")       --git client
--require("plugins.gruvbox")        --colorscheme
require("plugins.catppuccin")        --colorscheme
require("plugins.lualine")        --fancy info bar
require("plugins.nvim-lspconfig") --the preconfigured LSPs, should come before configuring LSPs
require("plugins.oil")            --better file manipulation
require("plugins.telescope")      --pickers for days
require("plugins.treesitter")
require("plugins.undotree")

-- configure LSPs after getting the lspconfigs
require("config.lsp")
