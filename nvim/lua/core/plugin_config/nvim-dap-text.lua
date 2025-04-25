return {
  "theHamsta/nvim-dap-virtual-text",
  dependencies = { "mfussenegger/nvim-dap" },
  config = function()
    require("nvim-dap-virtual-text").setup({
      enabled = true,         -- enable this plugin
      enabled_commands = true, -- enable DAP commands like DapVirtualTextEnable
      highlight_changed_variables = true,
      highlight_new_as_changed = true,
      show_stop_reason = true,
      commented = true,        -- virtual text will be commented
    })
  end
}
