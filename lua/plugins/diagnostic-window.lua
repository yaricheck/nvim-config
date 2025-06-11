return {
  "cseickel/diagnostic-window.nvim",
  requires = { "MunifTanjim/nui.nvim" },
  config = function()
    vim.keymap.set("n", "<leader>se", ":DiagWindowShow<CR>");
  end,
}
