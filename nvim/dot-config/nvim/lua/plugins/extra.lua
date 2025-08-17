return {
  {
    "ThePrimeagen/vim-be-good",
    cmd = "VimBeGood",
  },
  {
    "tpope/vim-sleuth",
    event = "BufReadPre",
  },
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
    event = "VeryLazy",
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
    "mason-org/mason-lspconfig.nvim",
    opts = {
      automatic_installation = false,
    },
  },
  {
    "nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        tsserver = {},
      },
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
    ---@module 'conform'
    ---@class conform.setupOpts
    opts = {
      formatters_by_ft = {
        markdown = { "prettier" },
        javascript = { "biome" },
        json = { "biome" },
        jsonc = { "biome" },
      },
      formatters = {},
    },
  },
  { "nvim-treesitter/nvim-treesitter-context", enabled = false }, -- leaves functions at top of buffer
  {
    "mbbill/undotree",
    keys = {
      { "<leader>bu", vim.cmd.UndotreeToggle, { desc = "Toggle UndoTree" } },
    },
  },
  {
    "tpope/vim-fugitive",
    event = "BufReadPre",
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
  -- {
  --   "epwalsh/obsidian.nvim",
  --   version = "*", -- recommended, use latest release instead of latest commit
  --   lazy = true,
  --   -- ft = "markdown", -- if you want all markdown files to load obsidian.nvim
  --   event = {
  --     "BufReadPre " .. vim.fn.expand("~") .. "/winter/obsidian/*.md",
  --     "BufReadPre " .. vim.fn.expand("~") .. "/winter/life/*.md",
  --   },
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --   },
  --   opts = {
  --     -- ui = { enable = false },
  --     workspaces = {
  --       {
  --         name = "vault",
  --         path = "~/winter/obsidian",
  --       },
  --     },
  --   },
  -- },
  -- latex stuff
  -- {
  --   "lervag/vimtex",
  --   lazy = false, -- lazy-loading will disable inverse search
  --   config = function()
  --     vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
  --     vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
  --     vim.g.vimtex_view_method = "skim"
  --     -- vim.g.vimtex_view_skim_sync = 1
  --     vim.g.vimtex_compiler_latexmk = {
  --       out_dir = "./build",
  --       aux_dir = "./build",
  --       continuous = 1,
  --     }
  --   end,
  --   keys = {
  --     { "<localLeader>l", "", desc = "+vimtex" },
  --   },
  -- },
  {
    "mikesmithgh/kitty-scrollback.nvim",
    enabled = true,
    lazy = true,
    cmd = { "KittyScrollbackGenerateKittens", "KittyScrollbackCheckHealth" },
    event = { "User KittyScrollbackLaunch" },
    version = "^6.0.0", -- pin major version, include fixes and features that do not have breaking changes
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration
    },
    keys = { { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit" } },
  },
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    keys = { { "<leader>e", "<cmd>Oil<cr>" } },
  },
  {
    "ibhagwan/fzf-lua",
    keys = { { "<leader>sz", "<cmd>FzfLua zoxide<cr>" } },
  },
}
