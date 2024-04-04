vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "nvim: Open Ex" })

-- Allow moving of highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "nvim: Move Highlighted Line Down" })
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv", { desc = "nvim: Move Hightlighted Line Up" })

-- keep cursor in same place when appending subsequent lines
vim.keymap.set("n", "J", "mzJ`z", { desc = "nvim: Keep Cursor in the Same Place When Appending Subsequent Lines" })

-- keep cursor in the middle when doing half-page scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "nvim: Keep Cursor in the Middle When Scrolling Down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "nvim: Keep Cursor in the Middle When Scrolling Up" })

-- keep search terms in middle
vim.keymap.set("n", "n", "nzzzv", { desc = "nvim: Keep Search Terms in Middle (Next)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "nvim: Keep Search Terms in Middle (Previous)" })

-- delete the highlighted word, then paste in what is in the paste buffer
-- without losing the contents of the paste buffer.
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "nvim: Paste Over Highlighted Text Without Losing Paste Buffer" })

-- yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y", { desc = "nvim: Yank to System Clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "nvim: Yank to System Clipboard" })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "nvim: Yank to System Clipboard" })

-- Delete to void register (so you don't lose the yanked stuff)
vim.keymap.set("n", "<leader>d", "\"_d", { desc = "nvim: Delete to Void Register" })
vim.keymap.set("v", "<leader>d", "\"_d", { desc = "nvim: Delete to Void Register" })

-- "Q" is a stupid command
vim.keymap.set("n", "Q", "<nop>", { desc = "nvim: Don't Repeat Last Register (AVAILABLE FOR REMAP)" })
-- Format the current buffer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "nvim: Format Current Buffer" })

-- Quick fixes
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", {desc="nvim: Next Quick Fix"})
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", {desc="nvim: Previous Quick Fix"})
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", {desc="nvim: Next Quick Fix in Current File"})
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", {desc="nvim: Previous Quick Fix in Current File"})

-- start a replace with the current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {desc = "nvim: Start a Replace with the Current Word"})
