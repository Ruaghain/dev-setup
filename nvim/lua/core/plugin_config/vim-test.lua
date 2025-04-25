return {
  "vim-test/vim-test",
  config = function()
    vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", { desc = "Test Nearest" })
    vim.keymap.set("n", "<leader>T", ":TestFile<CR>",    { desc = "Test File" })
    vim.keymap.set("n", "<leader>a", ":TestSuite<CR>",   { desc = "Test Suite" })
    vim.keymap.set("n", "<leader>l", ":TestLast<CR>",    { desc = "Test Last" })
    vim.keymap.set("n", "<leader>g", ":TestVisit<CR>",   { desc = "Test Visit" })
  end,
}

