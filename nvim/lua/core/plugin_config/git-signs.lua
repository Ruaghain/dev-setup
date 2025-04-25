return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "-" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
      current_line_blame = true, -- Show git blame on the current line
      signcolumn = true,         -- Toggle with `:Gitsigns toggle_signs`
      numhl      = false,        -- Toggle with `:Gitsigns toggle_numhl`
      linehl     = false,        -- Toggle with `:Gitsigns toggle_linehl`
      word_diff  = false,        -- Toggle with `:Gitsigns toggle_word_diff`
    })
  end
}
