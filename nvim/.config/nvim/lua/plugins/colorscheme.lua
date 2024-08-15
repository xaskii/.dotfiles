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
  --       -- disable_float_background = true,
  --       -- styles = {
  --       --   transparency = true,
  --       -- },
  --     })
  --   end,
  -- },
  -- catppuccin
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   opts = {
  --     color_overrides = {
  --       mocha = {
  --         base = "#0a0e15",
  --         crust = "#0c101a",
  --         mantle = "#0e121c",
  --       },
  --     },
  --   },
  --   -- lazy = true,
  --   -- opts = { transparent_background = true },
  -- },
  -- gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      -- transparent_mode = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "rose-pine",
      -- colorscheme = "catppuccin",
      colorscheme = "gruvbox",
    },
  },

  -- TOKYO NIGHT transparency
  -- {
  --   "folke/tokyonight.nvim",
  --   opts = { transparent = true },
  -- },
}
