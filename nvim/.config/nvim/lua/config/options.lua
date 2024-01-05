-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = " "

-- vim.g.netrw_browse_split = 0
-- vim.g.netrw_banner = 0
-- vim.g.netrw_winsize = 25

vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

vim.g.autoformat = false
vim.opt.clipboard = ""

-- tab character weirdness, idk if I want
-- vim.opt.list = false
vim.opt.list = true
vim.opt.listchars = {
  tab = "  ",
  trail = "·",
  extends = "»",
  precedes = "«",
  nbsp = "░",
}

vim.opt.scrolloff = 8 -- default is 4, but I like 8
vim.opt.wrap = true
vim.opt.breakindent = true -- so important omg I didn't know about this
vim.opt.linebreak = true
vim.opt.colorcolumn = "80"
vim.g.miniindentscope_disable = true
