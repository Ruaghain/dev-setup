return {
  {
    "tpope/vim-dadbod",
    lazy = true,
    cmd = { "DB", "DBUI", "DBUIToggle", "DBUIAddConnection" },
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      "tpope/vim-dadbod",
      "kristijanhusak/vim-dadbod-completion",
    },
    cmd = { "DB", "DBUI", "DBUIToggle", "DBUIAddConnection" },
    init = function()
      local cwd = vim.fn.getcwd()
      local db_folder = cwd .. "/.nvim/db-connections" 

      -- 1. Create .nvim/db-connections folder if missing
      if vim.fn.isdirectory(db_folder) == 0 then
        vim.fn.mkdir(db_folder, "p")
      end

      -- 2. Assign the folder path
      vim.g.db_ui_save_location = db_folder
      vim.g.db_ui_use_nerd_fonts = 1
    end 
  },
  {
    "kristijanhusak/vim-dadbod-completion",
    ft = "sql",
    config = function()
      vim.cmd([[
        autocmd FileType sql lua require('cmp').setup.buffer({ sources = { { name = 'vim-dadbod-completion' } } })
      ]])
    end,
  },
}

