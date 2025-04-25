return {
  vim.keymap.set('n', 'C-h C-Left', ':TmuxNavigateLeft<CR>'),
  vim.keymap.set('n', 'C-j C-Down', ':TmuxNavigateDown<CR>'),
  vim.keymap.set('n', 'C-k C-Up', ':TmuxNavigateUp<CR>'),
  vim.keymap.set('n', 'C-l C-Right', ':TmuxNavigateRight<CR>')
}
