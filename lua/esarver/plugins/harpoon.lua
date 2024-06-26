--return {}
return {
    {
        'theprimeagen/harpoon',
        config = function () vim.keymap.set("n", "<leader>a", function() require("harpoon.mark").add_file() end, {desc="Harpoon: Set Mark"})
            vim.keymap.set("n", "<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, {desc="Harpoon: Toggle Quick Menu"})
            vim.keymap.set("n", "<leader><C-q>", function() require("harpoon.ui").nav_file(1) end, {desc="Harpoon: Navigate to File 1"})
            vim.keymap.set("n", "<leader><C-w>", function() require("harpoon.ui").nav_file(2) end, {desc="Harpoon: Navigate to File 2"})
            vim.keymap.set("n", "<leader><C-e>", function() require("harpoon.ui").nav_file(3) end, {desc="Harpoon: Navigate to File 3"})
            vim.keymap.set("n", "<leader><C-r>", function() require("harpoon.ui").nav_file(4) end, {desc="Harpoon: Navigate to File 4"})

        end
    }
}
