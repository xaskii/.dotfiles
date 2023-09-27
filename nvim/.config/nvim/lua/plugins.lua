return {
  {
    'rose-pine/neovim', name = 'rose-pine',
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme rose-pine]])
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },
  'nvim-treesitter/playground',
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end,
  },
  {
    'theprimeagen/harpoon',
    config = function ()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      vim.keymap.set("n", "<leader>a", mark.add_file)
      vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

      vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
      vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
      vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
      vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function ()
      require('gitsigns').setup()
    end
  },
  {
    "windwp/nvim-autopairs",
    -- Optional dependency
    dependencies = { 'hrsh7th/nvim-cmp' },
    config = function()
      require("nvim-autopairs").setup {}
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local cmp = require('cmp')
      cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
      )
    end,
  },
  'tpope/vim-surround',
  'tpope/vim-sleuth',
  {
    'tpope/vim-commentary',
    config = function()
      vim.api.nvim_create_autocmd('FileType', {
        pattern = "text",
        command = "setlocal commentstring=#\\ %s"
      })
    end
  },
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
    end
  },
  -- vim training thing
  'ThePrimeagen/vim-be-good'
}
