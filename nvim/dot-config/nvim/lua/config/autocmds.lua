-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("FileType", {
  pattern = "text",
  command = "setlocal commentstring=#\\ %s",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "text", "markdown", "json", "jsonc", "yaml" },
  callback = function()
    vim.wo.spell = false
  end,
})

-- idk if I want this yet
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "go", "python" },
  callback = function()
    vim.b.autoformat = true
  end,
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
    vim.b.conceallevel = 0
    vim.bo.tabstop = 2
  end,
})

-- Enable word wrap for help and man pages
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "help", "man" },
  callback = function()
    vim.opt.wrap = true
  end,
})

-- obsidian vault settings
vim.api.nvim_create_autocmd({ "BufReadPre" }, {
  pattern = { "*/winter/obsidian/*.md" },
  callback = function()
    vim.opt.conceallevel = 0
    vim.b.autoformat = true
    vim.b.completion = false
  end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { vim.fn.expand("~") .. "/.config/kitty/kitty.conf" },
  callback = function()
    vim.system({ "kill", "-SIGUSR1", vim.env.KITTY_PID }, { text = true }, function(res)
      vim.schedule(function()
        vim.notify("Reloaded kitty config. pid=" .. vim.env.KITTY_PID .. " code=" .. res.code)
      end)
    end)
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = "*",
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
})
