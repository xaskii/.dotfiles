return {
  { "ThePrimeagen/vim-be-good" },
  {
    "tpope/vim-sleuth",
    -- lazy = true,
    -- event = "VeryLazy",
  },
  -- {
  --   "L3MON4D3/LuaSnip",
  --   dependencies = {
  --     "rafamadriz/friendly-snippets",
  --     config = function()
  --       -- the markdown snippets are kinda crazy
  --       require("luasnip.loaders.from_vscode").lazy_load({
  --         exclude = { "markdown", "text" },
  --       })
  --     end,
  --   },
  -- },
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
    enabled = false,
    opts = { modes = { search = { enabled = false } } },
  },
  {
    "saghen/blink.cmp",
    enabled = function()
      return not vim.tbl_contains({ "markdown" }, vim.bo.filetype)
        and vim.bo.buftype ~= "prompt"
        and vim.b.completion ~= false
    end,
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      sources = {
        default = { "lsp", "path", "buffer" },
      },
    },
  },
  {
    "rafamadriz/friendly-snippets",
    -- add blink.compat to dependencies
    enabled = false,
  },
  {
    "nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        sh = { "shellcheck" },
        bash = { "shellcheck" },
        zsh = { "shellcheck" },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    ---@class conform.setupOpts
    opts = {
      formatters_by_ft = {
        -- sh = { "shellharden" },
        nix = { "nixpkgs-fmt" },
        markdown = { "prettierd" },
        -- json = { "prettierd" },
        json = { "biome" },
      },
    },
  },

  -- just testing out disabling some of this stuff
  { "nvim-treesitter/nvim-treesitter-context", enabled = false }, -- leaves functions at top of buffer
  {
    "mbbill/undotree",
    init = function()
      vim.keymap.set("n", "<leader>bu", vim.cmd.UndotreeToggle, {
        desc = "Toggle UndoTree",
      })
    end,
  },
  {
    "tpope/vim-fugitive",
  },
  -- {
  --   "yetone/avante.nvim",
  --   event = "VeryLazy",
  --   lazy = true,
  --   version = false, -- set this if you want to always pull the latest change
  --   opts = {
  --     provider = "claude",
  --     auto_suggestions_provider = "copilot",
  --   },
  --   -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  --   build = "make",
  --   -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --     "stevearc/dressing.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "MunifTanjim/nui.nvim",
  --     --- The below dependencies are optional,
  --     "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
  --     "zbirenbaum/copilot.lua", -- for providers='copilot'
  --     {
  --       -- support for image pasting
  --       "HakonHarnes/img-clip.nvim",
  --       event = "VeryLazy",
  --       opts = {
  --         -- recommended settings
  --         default = {
  --           embed_image_as_base64 = false,
  --           prompt_for_file_name = false,
  --           drag_and_drop = {
  --             insert_mode = true,
  --           },
  --           -- required for Windows users
  --           use_absolute_path = true,
  --         },
  --       },
  --     },
  --     {
  --       -- Make sure to set this up properly if you have lazy=true
  --       "MeanderingProgrammer/render-markdown.nvim",
  --       opts = {
  --         file_types = { "Avante" },
  --         -- file_types = { "markdown", "Avante" },
  --       },
  --       ft = { "Avante" },
  --       -- ft = { "markdown", "Avante" },
  --     },
  --   },
  -- },
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    -- ft = "markdown", -- if you want all markdown files to load obsidian.nvim
    event = {
      "BufReadPre " .. vim.fn.expand("~") .. "/winter/obsidian/*.md",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      -- ui = {
      --   enable = false,
      -- },
      workspaces = {
        {
          name = "vault",
          path = "~/winter/obsidian",
        },
      },
    },
  },
  -- latex stuff
  {
    "lervag/vimtex",
    lazy = false, -- lazy-loading will disable inverse search
    config = function()
      vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
      vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
      vim.g.vimtex_view_method = "skim"
      -- vim.g.vimtex_view_skim_sync = 1
      vim.g.vimtex_compiler_latexmk = {
        out_dir = "./build",
        aux_dir = "./build",
        continuous = 1,
      }
    end,
    keys = {
      { "<localLeader>l", "", desc = "+vimtex" },
    },
  },
  {
    "mikesmithgh/kitty-scrollback.nvim",
    enabled = true,
    lazy = true,
    cmd = { "KittyScrollbackGenerateKittens", "KittyScrollbackCheckHealth" },
    event = { "User KittyScrollbackLaunch" },
    -- version = "*", -- latest stable version, may have breaking changes if major version changed
    version = "^6.0.0", -- pin major version, include fixes and features that do not have breaking changes
    config = function()
      require("kitty-scrollback").setup()
    end,
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      -- Only one of these is needed.
      "nvim-telescope/telescope.nvim", -- optional
      "ibhagwan/fzf-lua", -- optional
      "echasnovski/mini.pick", -- optional
    },
    config = true,
  },
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
}
