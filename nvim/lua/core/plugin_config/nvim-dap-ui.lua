return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap", "nvim-nio" },
  config = function()
    require("dapui").setup()
  end 
}
