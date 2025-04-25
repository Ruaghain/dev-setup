local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs etc
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true


-- === General ===
map("n", "<leader>w", ":w<CR>", { desc = "Save file" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })

-- === Telescope ===
local builtin = require("telescope.builtin")
map('n', '<leader>ff', builtin.find_files, { desc = 'Find Files'})
map('n', '<leader>fg', builtin.live_grep, { desc = 'Live Grep'})
map('n', '<leader>fb', builtin.buffers, { desc = 'Buffers'})
map('n', '<leader>fh', builtin.help_tags, { desc = 'Help Tags'})
map('n', '<leader>fr', builtin.oldfiles, { desc = 'Recently Opened Files'})
map("n", "<leader>fd", builtin.diagnostics, { desc = "Diagnostics" })

map('n', 'leader<h>', ':nohlsearch<CR>')

-- === NvimTree ===
map("n", "<leader>1", ":NvimTreeFocus<CR>", { desc = "Focus File Tree" })
-- Optional toggle:
-- map("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "Toggle File Tree" })

-- === Vim-Test ===
map("n", "<leader>t", ":TestNearest<CR>", { desc = "Test Nearest" })
map("n", "<leader>T", ":TestFile<CR>",    { desc = "Test File" })
map("n", "<leader>a", ":TestSuite<CR>",   { desc = "Test Suite" })
map("n", "<leader>l", ":TestLast<CR>",    { desc = "Test Last" })
map("n", "<leader>g", ":TestVisit<CR>",   { desc = "Test Visit" })

-- === Git (vim-fugitive) ===
map("n", "<leader>gb", ":Git blame<CR>",   { desc = "Git Blame" })
map("n", "<leader>gl", ":Git log<CR>",     { desc = "Git Log" })
map("n", "<leader>gc", ":Git commit<CR>",  { desc = "Git Commit" })
map("n", "<leader>gr", ":Git rebase -i<CR>", { desc = "Git Rebase" })
map("n", "<leader>ga", ":Git add %<CR>",   { desc = "Git Add Current File" })
map("n", "<leader>gs", ":Git status<CR>",  { desc = "Git Status" })
map("n", "<leader>gp", ":Git push<CR>",    { desc = "Git Push" })

-- === vim-dadbod / vim-dadbod-ui ===
map("n", "<leader>db", ":DBUIToggle<CR>", { desc = "Toggle DB UI" })
map("n", "<leader>sv", ":DBUI<CR>", { desc = "Open DBUI" })
map("n", "<leader>ee", "<Plug>(DBExecQuery)", { desc = "Run SQL query (line or cursor)" })
map("v", "<leader>ee", "<Plug>(DBExecVisual)", { desc = "Run SQL query (visual selection)" })
map("n", "<leader>es", "<Plug>(DBExecBuffer)", { desc = "Run SQL query (full buffer)" })

