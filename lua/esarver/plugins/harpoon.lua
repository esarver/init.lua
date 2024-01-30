return {
    {
        'theprimeagen/harpoon',
        keys = {
            {"<leader>a", modes={"n"}, require("harpoon.mark").add_file, desc="Harpoon: Add File"},
            {"<C-e>", modes={"n"}, require("harpoon.ui").toggle_quick_menu, desc="Harpoon: Toggle Quick Menu"},
            {"<C-1>", modes={"n"}, function() require("harpoon.ui").nav_file(1) end, desc="Harpoon: Goto File 1"},
            {"<C-2>", modes={"n"}, function() require("harpoon.ui").nav_file(2) end, desc="Harpoon: Goto File 2"},
            {"<C-3>", modes={"n"}, function() require("harpoon.ui").nav_file(3) end, desc="Harpoon: Goto File 3"},
            {"<C-4>", modes={"n"}, function() require("harpoon.ui").nav_file(4) end, desc="Harpoon: Goto File 4"},
        },
    }
}


