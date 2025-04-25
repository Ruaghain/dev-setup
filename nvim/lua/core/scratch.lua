-- lua/core/scratch.lua

local M = {}

-- Create a new unnamed scratch buffer
function M.new_scratch()
  vim.cmd("enew")                 -- Create a new buffer
  vim.bo.buftype = "nofile"        -- Buffer is not associated with a file
  vim.bo.bufhidden = "hide"        -- Hide the buffer when abandoned
  vim.bo.swapfile = false          -- No swapfile
  vim.opt_local.modified = false   -- Mark buffer as unmodified initially
  vim.opt_local.wrap = true        -- Optional: line wrap
end

-- Create a floating scratch buffer
function M.floating_scratch()
  local width = math.floor(vim.o.columns * 0.6)
  local height = math.floor(vim.o.lines * 0.6)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local buf = vim.api.nvim_create_buf(false, true) -- create new unlisted, scratch buffer
  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    style = "minimal",
    border = "rounded",
  })

  vim.bo[buf].buftype = "nofile"
  vim.bo[buf].bufhidden = "hide"
  vim.bo[buf].swapfile = false
  vim.opt_local.wrap = true
  vim.api.nvim_buf_set_option(buf, "modifiable", true)

 vim.keymap.set("n", "q", 
    function()
      vim.api.nvim_win_close(win, true)
    end, 
  { buffer = buf, silent = true })  
end

return M

