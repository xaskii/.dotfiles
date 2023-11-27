return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "auto",
        disable_background = true,
        disable_float_background = true,
        dim_nc_background = false,
      })
      -- vim.cmd([[colorscheme rose-pine]]) -- not needed inside LazyVim
    end,
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "rose-pine" } },
  -- I don't really want a sidebar, why would someone use this
  -- { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  -- just testing out disabled some of this stuff
  -- { "akinsho/bufferline.nvim", enabled = false },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  { "echasnovski/mini.indentscope", enabled = false }, -- animated indent guides
  { "nvimdev/dashboard-nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },
}
