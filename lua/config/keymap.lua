vim.keymap.set("n", "<leader>pv", "<cmd>Oil<CR>", { desc = "nvim: Open File Explorer" })

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
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "nvim: Yank to end of current line to System Clipboard" })

-- Format the current buffer
vim.keymap.set("n", "<leader>v", vim.lsp.buf.format, { desc = "nvim: Format Current Buffer" })

vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", {desc="Terminal to normal mode more easily"})
