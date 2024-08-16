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
    "tpope/vim-surround",
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
    "nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              directoryFilters = {
                "-bazel-bin",
                "-bazel-out",
                "-bazel-testlogs",
                "-bazel-mypkg",
              },
            },
          },
        },
      },
      inlay_hints = { enabled = false },
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
  {
    "mbbill/undotree",
    init = function()
      vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end,
  },
}
