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
  {
    "catppuccin/nvim",
    name = "catppuccin",
    -- lazy = true,
    -- opts = {
    --   color_overrides = {
    --     mocha = {
    --       base = "#141414",
    --       crust = "#161616",
    --       mantle = "#181818",
    --     },
    --   },
    -- },
    -- lazy = true,
    opts = { transparent_background = true },
  },
  -- gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    opts = {},
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "rose-pine",
      colorscheme = "catppuccin",
      -- colorscheme = "gruvbox",
    },
  },
  -- TOKYO NIGHT transparency
  {
    "folke/tokyonight.nvim",
    enabled = false,
    opts = { transparent = true },
  },
}
