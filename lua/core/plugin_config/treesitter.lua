require'nvim-treesitter.configs'.setup {
  ensure_installed = {'c', 'lua', 'java', 'javascript', 'typescript', 'json', 'sql', 'python' },
  sync_install = false,
  auto_install = true,
  highlight = {
    enabled = true
  }
}
