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
  pattern = { "markdown", "json", "jsonc", "yaml" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})

-- Disabling indentation guides for man pages
vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
  pattern = { "man", "noice" },
  callback = function()
    vim.b.miniindentscope_disable = true
  end,
})

-- Enabling word wrap for help and man pages
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "help", "man" },
  callback = function()
    vim.b.wrap = true
  end,
})
