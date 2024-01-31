return {
    {
        'theprimeagen/harpoon',
        keys = {
            { "<leader>a", mode = { "n" }, function() require("harpoon.mark").add_file() end,    desc = "Harpoon: Add File" },
            { "<C-e>",     mode = { "n" }, function() require("harpoon.ui").toggle_quick_menu() end, desc = "Harpoon: Toggle Quick Menu" },
            { "<C-1>",     mode = { "n" }, function() require("harpoon.ui").nav_file(1) end,     desc = "Harpoon: Goto File 1" },
            { "<C-2>",     mode = { "n" }, function() require("harpoon.ui").nav_file(2) end,     desc = "Harpoon: Goto File 2" },
            { "<C-3>",     mode = { "n" }, function() require("harpoon.ui").nav_file(3) end,     desc = "Harpoon: Goto File 3" },
            { "<C-4>",     mode = { "n" }, function() require("harpoon.ui").nav_file(4) end,     desc = "Harpoon: Goto File 4" },
        },
    }
}
