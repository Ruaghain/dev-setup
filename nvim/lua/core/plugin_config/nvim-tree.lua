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
  end
}
