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
    lazy = true,
    priority = 1000,
    opts = {
      color_overrides = {
        mocha = {
          base = "#141414",
        },
      },
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    priority = 1000,
    opts = {
      variant = "auto",
      palette = {
        main = {
          base = "#141414",
        },
      },
      -- disable_background = true,
      -- disable_float_background = true,
      -- styles = {
      --   transparency = true,
      -- },
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    priority = 1000,
  },
  { "folke/tokyonight.nvim", enabled = false },
}
