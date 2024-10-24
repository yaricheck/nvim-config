return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          always_show_by_pattern = {
            ".env*",
          },
          hide_by_name = {
            "node_modules",
            ".git",
          },
        },
      },
      event_handlers = {
        {
          event = "file_open_requested",
          handler = function()
            require("neo-tree.command").execute({ action = "close" })
          end
        },
      }
    })
    vim.keymap.set({ 'n', 'v' }, "<C-n>", ":Neotree filesystem reveal left<CR>", {})
    vim.keymap.set({ 'n', 'v' }, "<leader>bf", ":Neotree buffers reveal float<CR>", {})
  end,
}
