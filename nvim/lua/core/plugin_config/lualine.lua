return {
  "nvim-lualine/lualine.nvim",
  dependencies = {"nvim-tree/nvim-web-devicons"},
  config = function()
    require('lualine').setup({
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
          statusline = 100,
          tabline = 100,
          winbar = 100,
        }
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 
          {
            'diagnostics',
            sources = { 'nvim_diagnostic' },
            sections = { 'error', 'warn', 'info', 'hint' },
            symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
            colored = true,
            update_in_insert = false,
            always_visible = false,
          },
        },
        lualine_c = {
          {
            function()
              return vim.fn.expand("%:~:.") ~= "" and vim.fn.expand("%:~:.") or "[No Name]"
            end,
            icon = "📁",
            separator = " ",
          },
        },    
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
           {
            function()
              return vim.fn.expand("%:~:.") ~= "" and vim.fn.expand("%:~:.") or "[No Name]"
            end,
            icon = "📁",
            separator = " ",
          },
        },
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    })
  end  
}
