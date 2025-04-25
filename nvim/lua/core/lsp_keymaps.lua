local wk = require("which-key")

local function lsp_mappings(bufnr)
  wk.register({
    ["<leader>l"] = {
      name = "+lsp",
      r = { vim.lsp.buf.rename, "Rename Symbol" },
      a = { vim.lsp.buf.code_action, "Code Action" },
      f = { function() vim.lsp.buf.format({ async = true }) end, "Format Document" },
      d = { vim.lsp.buf.definition, "Goto Definition" },
      D = { vim.lsp.buf.declaration, "Goto Declaration" },
      i = { vim.lsp.buf.implementation, "Goto Implementation" },
      t = { vim.lsp.buf.type_definition, "Type Definition" },
      h = { vim.lsp.buf.hover, "Hover Documentation" },
      s = { vim.lsp.buf.signature_help, "Signature Help" },
    },
  }, { buffer = bufnr })
end

return lsp_mappings

