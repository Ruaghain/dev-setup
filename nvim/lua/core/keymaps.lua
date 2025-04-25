local wk = require("which-key")
local builtin = require("telescope.builtin")
local gs = require("gitsigns")
local dap = require("dap")
local dapui = require("dapui")
local scratch = require("core.scratch")

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
    r = { "<cmd>NvimTreeRefresh<CR>", "Refresh NvimTree" },

     -- === Outline / Symbols ===
    o = {
      name = "+outline",
      o = { "<cmd>AerialToggle<cr>", "Toggle Outline Window" },
      s = { "<cmd>Telescope aerial<cr>", "Fuzzy Search Outline Symbols" },
    },
   
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

    -- === Git (Fugitive + Gitsigns) ===
    g = {
      name = "+git",
      -- Fugitive commands
      b = { "<cmd>Git blame<cr>", "Git Blame" },
      l = { "<cmd>Git log<cr>", "Git Log" },
      c = { "<cmd>Git commit<cr>", "Git Commit" },
      r = { "<cmd>Git rebase -i<cr>", "Git Rebase" },
      a = { "<cmd>Git add %<cr>", "Git Add Current File" },
      s = { "<cmd>Git status<cr>", "Git Status" },
      p = { "<cmd>Git push<cr>", "Git Push" },

      -- Gitsigns hunk management
      h = {
        name = "+hunks",
        s = { gs.stage_hunk, "Stage Hunk" },
        r = { gs.reset_hunk, "Reset Hunk" },
        u = { gs.undo_stage_hunk, "Undo Stage Hunk" },
        p = { gs.preview_hunk, "Preview Hunk" },
        b = { gs.blame_line, "Blame Line" },
        d = { gs.diffthis, "Diff This" },
        R = { gs.reset_buffer, "Reset Buffer" },
      },
    },

    -- === Database (vim-dadbod) ===
    d = {
      name = "+database",
      b = { "<cmd>DBUIToggle<CR>", "Toggle DB UI" },
      v = { "<cmd>DBUI<CR>", "Open DBUI" },
      e = { "<cmd>DBExecQuery<CR>", "Execute Query" }
    },
    e = {
      name = "+execute sql",
      e = { "<Plug>(DBExecQuery)", "Run SQL Query (line/cursor)" },
      s = { "<Plug>(DBExecBuffer)", "Run SQL Query (full buffer)" },
    },
    D = {
      name = "+debug",
      b = { dap.toggle_breakpoint, "Toggle Breakpoint" },
      c = { dap.continue, "Start/Continue Debugging" },
      r = { dap.restart, "Restart Debugging" },
      s = { dap.step_over, "Step Over" },
      i = { dap.step_into, "Step Into" },
      o = { dap.step_out, "Step Out" },
      u = { dapui.toggle, "Toggle Debugger UI" },
      R = { dap.run_last, "Run Last Debug Session" },
      q = { function() dap.terminate(); dapui.close() end, "Stop Debugging" },
    },
    s = {
      name = "+scratch",
      n = { scratch.new_scratch, "New Scratch Buffer" },
      f = { scratch.floating_scratch, "Floating Scratch Buffer" },
    }
  }
})

