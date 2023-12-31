return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
      },
    },
    config = function(_, opts)
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
      vim.keymap.set('n', '<C-p>', builtin.git_files, {})
      vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
      local telescope = require('telescope')
      telescope.setup {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = 'smart_case',
        },
        pickers = {
          find_files = {
            -- find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
            find_command = { "fd", "-tf", "-HI", "--strip-cwd-prefix", "-E", ".git"},
          },
          live_grep = {
            hidden = true
          }
        },
      }
      telescope.load_extension('fzf')
    end
  },
}
