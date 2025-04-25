return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp" },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local on_attach = function(client, bufnr)
      require("core.lsp_keymaps")(bufnr)
      if client.supports_method("textDocument/formatting") then
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({ async = true, timeout_ms = 1000 })
          end,
        })
      end
    end

    lspconfig.pylsp.setup({
      capabilities = capabilities,
      settings = {
        pylsp = {
          plugins = {
            jedi_completion = { enabled = true },
            jedi_hover = { enabled = true },
            jedi_signature_help = { enabled = true },
            pycodestyle = { enabled = false },
            pylint = { enabled = false },
            mccabe = { enabled = false },
            yapf = { enabled = false },
            ruff = { enabled = false }, -- avoid conflict
          },
        },
      },
    })

    lspconfig.ruff.setup({
      capabilities = capabilities,
      on_attach = on_attach,
      init_options = {
        settings = {
          args = {}, -- you can pass custom CLI args if needed
        },
      },
    })

  lspconfig.ts_ls.setup({
    capabilities = capabilities,
    on_attach = on_attach
    })
  end
}

