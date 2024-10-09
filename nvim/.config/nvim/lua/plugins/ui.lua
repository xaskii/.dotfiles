return {
  -- looks pretty cool tbh, but I like the default behaviour
  { "nvimdev/dashboard-nvim", enabled = false },

  -- indentation fuckery, chanign indentation character to be flush
  {
    "lukas-reineke/indent-blankline.nvim", -- regular indentation symbols
    opts = {
      -- no scope highlighting, it's so bright
      scope = { enabled = false },
      indent = {
        repeat_linebreak = true,
        char = "▏",
        tab_char = "▏",
      },
    },
  },
  -- {
  --   -- enabled = false, -- doesn't support word wrapping yet like blankline
  --   "echasnovski/mini.indentscope",
  --   opts = {
  --     symbol = "▏",
  --     draw = {
  --       priority = 100,
  --       delay = 0,
  --       animation = require("mini.indentscope").gen_animation.none(),
  --     },
  --     options = {
  --       indent_at_cursor = false,
  --     },
  --   },
  -- },
  {
    -- stop insta showing marks and registers
    "folke/which-key.nvim",
    ---@class wk.Opts
    opts = {
      ---@type number | fun(ctx: { keys: string, mode: string, plugin?: string }):number
      delay = function(ctx)
        if ctx.plugin and ctx.plugin ~= "marks" and ctx.plugin ~= "registers" then
          return 0
        end
        return 200
      end,
      plugins = { registers = false },
    },
  },

  -- tweaking notification stuff
  {
    "folke/noice.nvim",
    -- enabled = false,
    opts = {
      cmdline = {
        view = "cmdline",
      },
      presets = {
        lsp_doc_border = true,
        command_palette = true,
      },
    },
    -- TODO: combine this stuff with above eventually, but no noice solves the initial problem
    -- opts = function(_, opts)
    -- needed when nvim-notify enabled
    -- table.insert(opts.routes, {
    --   filter = {
    --     event = "notify",
    --     find = "No information available",
    --   },
    --   opts = { skip = true },
    -- })
    -- opts.cmdline = { view = "cmdline" }
    -- opts.presets.lsp_doc_border = true
    -- opts.presets.command_palette = false
    -- end,
  },
  {
    -- this is just straight noise, why can't they be small
    "rcarriga/nvim-notify",
    enabled = false,
    -- opts = {
    --   render = "compact",
    --   stages = "static",
    --   timeout = 1500,
    -- },
  },
}
