local dap = require("dap")
local dap_python = require("dap-python")

-- Setup Python debugger (adjust python path to your venv if needed)
dap_python.setup("~/.virtualenvs/debugpy/bin/python")

dap_python.test_runner = "pytest" -- Optional: set your test runner

-- Custom debug configurations
dap.configurations.python = {
  {
    type = "python",
    request = "launch",
    name = "Launch Current File",

    program = "${file}",          -- Run current open file
    pythonPath = function()
      -- Optionally auto-detect venv, or hardcode your venv path
      return vim.fn.getenv("VIRTUAL_ENV") and vim.fn.getenv("VIRTUAL_ENV") .. "/bin/python"
        or "/usr/bin/python"
    end,
    cwd = "${workspaceFolder}",    -- Important: sets working dir to project root!
    justMyCode = false,            -- Allows stepping into libraries if false
  },
  {
    type = "python",
    request = "launch",
    name = "Launch Main.py",

    program = "${workspaceFolder}/main.py", -- Launch your project main
    pythonPath = function()
      return vim.fn.getenv("VIRTUAL_ENV") and vim.fn.getenv("VIRTUAL_ENV") .. "/bin/python"
        or "/usr/bin/python"
    end,
    cwd = "${workspaceFolder}",
  },
  {
    type = "python",
    request = "launch",
    name = "Run Module",

    module = "app.main",           -- Example: run python module like `python -m app.main`
    pythonPath = function()
      return vim.fn.getenv("VIRTUAL_ENV") and vim.fn.getenv("VIRTUAL_ENV") .. "/bin/python"
        or "/usr/bin/python"
    end,
    cwd = "${workspaceFolder}",
  },
  {
    type = "python",
    request = "attach",
    name = "Attach to Flask",
    connect = {
      host = "127.0.0.1",
      port = 5678,
    },
    mode = "remote",
    cwd = "${workspaceFolder}",
    pathMappings = {
      {
        localRoot = "${workspaceFolder}",
        remoteRoot = "${workspaceFolder}",
      },
    },
  },
}

-- Optional: Auto-open dapui when debugging starts
local dapui = require("dapui")
dap.listeners.before.attach.dapui_config = function() dapui.open() end
dap.listeners.before.launch.dapui_config = function() dapui.open() end
dap.listeners.after.event_terminated.dapui_config = function() dapui.close() end
dap.listeners.after.event_exited.dapui_config = function() dapui.close() end

