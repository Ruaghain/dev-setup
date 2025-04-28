return {
  {
    "tom-anders/telescope-vim-bookmarks.nvim",
    dependencies = { "MattesGroeger/vim-bookmarks", "nvim-telescope/telescope.nvim" },
    config = function()
      require("telescope").load_extension("vim_bookmarks")
    end,
  }
}
