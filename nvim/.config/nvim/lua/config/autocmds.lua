-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("FileType", {
  pattern = "text",
  command = "setlocal commentstring=#\\ %s",
  -- command = "setlocal commentstring=#\\ %s"
})

-- idk if I want this yet
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "lua" },
  callback = function()
    vim.b.autoformat = true
  end,
})

-- Taken from folke
-- Fixing treesitter concealing
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "json", "jsonc", "yaml" },
  callback = function()
    -- vim.wo.spell = false -- idk what this does
    vim.wo.conceallevel = 0
  end,
})

-- Disabling indentation guides for man pages
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "man" },
  callback = function()
    vim.b.miniindentscope_disable = true
  end,
})
