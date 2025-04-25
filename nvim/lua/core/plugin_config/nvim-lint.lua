return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufWritePost" }, -- lazy load on open/save
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      python = { "ruff" }, -- or "flake8", "mypy", etc.
      javascript = { "eslint" },
      typescript = { "eslint" },
      lua = { "luacheck" },
      -- Add more filetypes as needed
    }

    -- Run on save
    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}

