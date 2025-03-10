return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      -- colorscheme = "rose-pine",
      -- colorscheme = "gruvbox",
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    -- lazy = true,
    opts = {
      -- transparent_background = true,
      -- color_overrides = {
      --   mocha = {
      --     base = "#141414",
      --     --       crust = "#161616",
      --     --       mantle = "#181818",
      --   },
      -- },
    },
  },
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
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   lazy = true,
  --   opts = {},
  -- },
  {
    "folke/tokyonight.nvim",
    enabled = false,
    opts = { transparent = true },
  },
}
