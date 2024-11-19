return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = 'dracula',
      sections = {
        lualine_a = {
          {
            'filename',
            file_status = true,
            newfile_status = false,
            path = 3,

            shorting_target = 40,
            symbols = {
              modified = '[+]',
              readonly = '[-]',
              unnamed = '[No Name]',
              newfile = '[New]',
            }
          }
        }
      },
    }
  }
}
