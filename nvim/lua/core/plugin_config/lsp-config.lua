return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp" },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

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
      on_attach = function(client, bufnr)
        client.server_capabilities.documentFormattingProvider = true

        -- Optional: format on save
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({ async = false, timeout_ms = 1000 })
          end,
        })
      end,
      init_options = {
        settings = {
          args = {}, -- you can pass custom CLI args if needed
        },
      },
    })

  lspconfig.ts_ls.setup({
    capabilities = capabilities,
    on_attach = function(client, bufnr)
      client.server_capabilities.documentFormattingProvider = false

      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ timeout_ms = 1000 })
        end,
      })
    end,
    })
  end
}

