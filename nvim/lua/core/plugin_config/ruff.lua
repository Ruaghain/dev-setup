return {
  config = function()
    local lspconfig = require("lspconfig")

    -- Ruff LSP
    lspconfig.ruff_lsp.setup({
      on_attach = function(client, bufnr)
        -- Optional: Disable hover and formatting if using with pylsp or others
        client.server_capabilities.hoverProvider = false
        client.server_capabilities.documentFormattingProvider = false
      end,
      init_options = {
        settings = {
          args = {}, -- optionally add custom args like "--line-length", "88"
        },
      },
    })
  end
}

