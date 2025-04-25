return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require'nvim-treesitter.configs'.setup({
      ensure_installed = {'c', 'lua', 'java', 'javascript', 'typescript', 'json', 'sql', 'python' },      
      sync_install = false,
      auto_install = truei,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
      },
      indent = {
        enable = true
      }
    })
  end
}
