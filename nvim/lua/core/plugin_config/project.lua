return {
  "ahmedkhalf/project.nvim",
  config = function()
    require("project_nvim").setup({
      detection_methods = { "pattern" },
      patterns = { ".git", "pyproject.toml", "package.json", "setup.py", "Makefile" },
      exclude_dirs = { "~/.local/*" },
      show_hidden = true,
    })
  end,
}
