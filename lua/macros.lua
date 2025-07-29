local map = vim.keymap.set

vim.fn.setreg('p', 'dgn*PvB#')
map("n", "<leader>qc", ":g//normal @p<CR>")
