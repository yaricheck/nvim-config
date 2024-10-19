return {
	"rebelot/terminal.nvim",
	config = function()
    require("terminal").setup()
		local term_map = require("terminal.mappings")
		vim.keymap.set({ "n", "x" }, "<leader>ts", term_map.operator_send, { expr = true })
		vim.keymap.set("n", "<leader>to", term_map.toggle)
		vim.keymap.set("n", "<leader>tO", term_map.toggle({ open_cmd = "enew" }))
		vim.keymap.set("n", "<leader>tr", term_map.run)
		vim.keymap.set("n", "<leader>tR", term_map.run(nil, { layout = { open_cmd = "enew" } }))
		vim.keymap.set("n", "<leader>tk", term_map.kill)
		vim.keymap.set("n", "<leader>t]", term_map.cycle_next)
		vim.keymap.set("n", "<leader>t[", term_map.cycle_prev)
	end,
}
