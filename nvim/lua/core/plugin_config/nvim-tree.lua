return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- optionally enable 24-bit colour 
    vim.opt.termguicolors = true

    require("nvim-tree").setup({
      sync_root_with_cwd = true, -- sync the root with current working dir

      update_focused_file = {
        enable = true, -- Update the focused file automatically
        update_root = true, -- Update the tree root too
        ignore_list = {}, -- List of filetypes to ignore (optional)
      },
      filesystem_watchers = {
        enable = true,
      },      
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
        root_folder_label = ":t",
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

    -- Automatically open tree when starting Neovim in a directory
    vim.api.nvim_create_autocmd({ "VimEnter" }, {
      callback = function()
        local tree = require("nvim-tree.api").tree
        tree.open()
      end,
    })    
  end
}
