return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  version = "*",
  config = function()
    -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- optionally enable 24-bit colour
    vim.opt.termguicolors = true

    require("nvim-tree").setup({
      git = {
        enable = true,
        ignore = false
      },
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 50,
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            file = true,
            git = true,
            folder = true,
            folder_arrow = true
          }
        }
      },
      filters = {
        dotfiles = true,
      },
    })

    --vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
    vim.keymap.set('n', '<leader>1', ':NvimTreeFocus<CR>')
  end
}
