vim.lsp.config('ruff', {
  init_options = {
    settings = {
    }
  }
})

require'lspconfig'.ruff.setup{}
