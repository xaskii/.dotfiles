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
      })
    end,
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "rose-pine" } },
  -- this doesn't make the notifs smaller idk why
  {
    "rcarriga/nvim-notify",
    opts = {
      -- level = 3,
      -- render = "minimal",
      stages = "static",
    },
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
      config = function()
        -- HOW TF DO YOU GET RID OF THE SNIPPETS LMFAOOO
        -- surely there's a bettery way to do this
        require("luasnip.loaders.from_vscode").lazy_load({
          exclude = { "markdown", "text" },
        })
      end,
    },
  },
  -- disabling the troll hiding
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = { ".git", ".DS_Store", "thumbs.db" },
        },
        never_show = {},
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = {
        -- markdown treesitter hides bulletpoints
        disable = { "markdown" },
      },
    },
  },
  {
    "folke/flash.nvim",
    opts = { modes = { search = { enabled = false } } },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = {
      sources = {
        {
          -- disabling the word completion, it's tried in vs-code for a bit and didn't like it
          name = "nvim_lsp",
          entry_filter = function(entry, ctx)
            return require("cmp.types").lsp.CompletionItemKind[entry:get_kind()] ~= "Text"
          end,
        },
      },
    },
  },
  {
    -- disabling insta-showing marks
    "folke/which-key.nvim",
    opts = {
      triggers_nowait = {
        -- marks
        -- "`",
        -- "'",
        -- "g`",
        -- "g'",
        -- registers
        '"',
        "<c-r>",
        -- spelling
        "z=",
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = { sh = { "shellcheck" } },
    },
  },
  -- {
  --   "stevearc/conform.nvim",
  --   opts = {
  --     formatters_by_ft = { sh = { "shellharden" } },
  --   },
  -- },

  -- just testing out disabling some of this stuff
  -- { "akinsho/bufferline.nvim", enabled = false },
  { "nvim-treesitter/nvim-treesitter-context", enabled = false }, -- leaves functions at top of buffer

  -- { "nvimdev/dashboard-nvim", enabled = false }, -- looks pretty cool tbh
  -- { "rcarriga/nvim-notify", enabled = false },
}
