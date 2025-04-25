return {
  "tpope/vim-fugitive",
  config = function()
    vim.keymap.set("n", "<leader>gb", ":Git blame<CR>",   { desc = "Git Blame" })
    vim.keymap.set("n", "<leader>gl", ":Git log<CR>",     { desc = "Git Log" })
    vim.keymap.set("n", "<leader>gc", ":Git commit<CR>",  { desc = "Git Commit" })
    vim.keymap.set("n", "<leader>gr", ":Git rebase -i<CR>", { desc = "Git Rebase Interactive" })
    vim.keymap.set("n", "<leader>ga", ":Git add %<CR>",   { desc = "Git Add Current File" })
    vim.keymap.set("n", "<leader>gs", ":Git status<CR>",  { desc = "Git Status" })
    vim.keymap.set("n", "<leader>gp", ":Git push<CR>",    { desc = "Git Push" })
  end
}

