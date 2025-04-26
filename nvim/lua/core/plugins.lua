-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

return require('lazy').setup({
  require("core.plugin_config.gruvbox"),
  require("core.plugin_config.nvim-tree"),
  require("core.plugin_config.lualine"),
  require("core.plugin_config.treesitter"),
  require("core.plugin_config.vim-test"),
  require("core.plugin_config.vim-fugitive"),
  require("core.plugin_config.vim-rhubarb"),
  require("core.plugin_config.telescope"),
  require("core.plugin_config.nvim-cmp"),
  require("core.plugin_config.nvim-lint"),
  require("core.plugin_config.lspkind"),
  require("core.plugin_config.mason"),
  require("core.plugin_config.mason-lspconfig"),
  require("core.plugin_config.lsp-config"),
  "christoomey/vim-tmux-navigator",
  require("core.plugin_config.database"),
  require("core.plugin_config.which-key"),
  "nvim-neotest/nvim-nio",
  "mfussenegger/nvim-dap",
  require("core.plugin_config.nvim-dap-ui"),
  require("core.plugin_config.nvim-dap-python"),
  require("core.plugin_config.git-signs"),
  require("core.plugin_config.nvim-dap-text"),
  require("core.plugin_config.aerial"),
  require("core.plugin_config.project")
})
