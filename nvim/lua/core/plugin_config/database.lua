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
    cmd = { "DBUI", "DBUIToggle", "DBUIAddConnection" },
    init = function()
      -- Try using `.nvim/db-connections.json` in the current working directory
      local project_db_path = vim.fn.getcwd() .. "/.nvim/db-connections.json"

      if vim.fn.filereadable(project_db_path) == 0 then
        -- fallback: create the file if it doesn't exist
        vim.fn.mkdir(vim.fn.fnamemodify(project_db_path, ":h"), "p")
        vim.fn.writefile({ '{"bookmarks": {}}' }, project_db_path)
      end

      vim.g.db_ui_save_location = project_db_path
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

