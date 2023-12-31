return {
  { "ThePrimeagen/vim-be-good" },
  {
    "tpope/vim-sleuth",
    lazy = true,
    event = "VeryLazy",
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
      config = function()
        -- the markdown snippets are kinda crazy
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
  { "nvim-treesitter/nvim-treesitter-context", enabled = false }, -- leaves functions at top of buffer
}
