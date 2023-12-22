return {
  -- rose-pine
  -- {
  --   "rose-pine/neovim",
  --   lazy = true,
  --   name = "rose-pine",
  --   -- priority = 1000,
  --   config = function()
  --     require("rose-pine").setup({
  --       variant = "auto",
  --       disable_background = true,
  --       disable_float_background = true,
  --     })
  --   end,
  -- },
  -- { "LazyVim/LazyVim", opts = { colorscheme = "rose-pine" } },

  -- catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    opts = { transparent_background = true },
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "catppuccin" } },

  -- TOKYO NIGHT
  -- {
  --   "folke/tokyonight.nvim",
  --   opts = { transparent = true },
  -- },
}
