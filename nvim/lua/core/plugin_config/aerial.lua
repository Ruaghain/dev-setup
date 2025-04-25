return {
  "stevearc/aerial.nvim",
  dependencies = { 
    "nvim-treesitter/nvim-treesitter", 
    "nvim-lspconfig",
    "nvim-telescope/telescope.nvim"
  },
  config = function()
    require("aerial").setup({
      layout = {
        max_width = { 40, 0.2 },
        default_direction = "prefer_right",
      },
      attach_mode = "window", -- attach to each window separately
      backends = { "lsp", "treesitter", "markdown" }, -- sources for outline
    })
    require("telescope").load_extension("aerial")
  end
}

