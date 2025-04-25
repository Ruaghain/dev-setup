return {
  "mfussenegger/nvim-dap-python",
  dependencies = { "mfussenegger/nvim-dap" },
  config = function()
    local dap_python = require("dap-python")
    dap_python.setup("/usr/bin/python3") -- or wherever your python is

    -- Optional: configure your default test runner
    dap_python.test_runner = "pytest"
  end,
}
