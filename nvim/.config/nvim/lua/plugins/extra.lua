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
      vim.cmd([[colorscheme rose-pine]]) -- not needed inside LazyVim
    end,
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "rose-pine" } },
  --  i don't have enough screen for sidebar T_T
  -- { "nvim-neo-tree/neo-tree.nvim", enabled = false },

  -- just testing out disabling some of this stuff
  -- { "akinsho/bufferline.nvim", enabled = false },
  { "nvim-treesitter/nvim-treesitter-context", enabled = false },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  { "echasnovski/mini.indentscope", enabled = false }, -- animated indent guides
  { "nvimdev/dashboard-nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },
}
