local wk = require("which-key")
local builtin = require("telescope.builtin")

wk.register({
  ["<leader>f"] = {
    name = "+file",
    f = { "<cmd>Telescope find_files<cr>", "Find Files" },
    g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
  },
})

wk.register({
  ["<leader>"] = {
    -- === General ===
    w = { "<cmd>w<CR>", "Save file" },
    q = { "<cmd>q<CR>", "Quit" },
    ["h"] = { "<cmd>nohlsearch<CR>", "Clear search highlights" },

    -- === Files / Search (Telescope) ===
    f = {
      name = "+file/search",
      f = { builtin.find_files, "Find Files" },
      g = { builtin.live_grep, "Live Grep" },
      b = { builtin.buffers, "List Buffers" },
      h = { builtin.help_tags, "Help Tags" },
      r = { builtin.oldfiles, "Recently Opened Files" },
      d = { builtin.diagnostics, "Diagnostics" },
    },
        -- === File Tree (NvimTree) ===
    ["1"] = { "<cmd>NvimTreeFocus<CR>", "Focus File Tree" },
    -- ["<C-n>"] = { "<cmd>NvimTreeToggle<CR>", "Toggle File Tree" },

    -- === Testing (vim-test) ===
    t = { "<cmd>TestNearest<CR>", "Test Nearest" },
    T = { "<cmd>TestFile<CR>", "Test File" },
    a = { "<cmd>TestSuite<CR>", "Test Suite" },
    l = { "<cmd>TestLast<CR>", "Test Last" },
    g = { "<cmd>TestVisit<CR>", "Test Visit" },

    -- === Git (vim-fugitive) ===
    g = {
      name = "+git",
      b = { "<cmd>Git blame<CR>", "Git Blame" },
      l = { "<cmd>Git log<CR>", "Git Log" },
      c = { "<cmd>Git commit<CR>", "Git Commit" },
      r = { "<cmd>Git rebase -i<CR>", "Git Rebase" },
      a = { "<cmd>Git add %<CR>", "Git Add Current File" },
      s = { "<cmd>Git status<CR>", "Git Status" },
      p = { "<cmd>Git push<CR>", "Git Push" },
    },

    -- === Database (vim-dadbod) ===
    d = {
      name = "+database",
      b = { "<cmd>DBUIToggle<CR>", "Toggle DB UI" },
      v = { "<cmd>DBUI<CR>", "Open DBUI" },
    },
    e = {
      name = "+execute sql",
      e = { "<Plug>(DBExecQuery)", "Run SQL Query (line/cursor)" },
      s = { "<Plug>(DBExecBuffer)", "Run SQL Query (full buffer)" },
    },

  }
})

