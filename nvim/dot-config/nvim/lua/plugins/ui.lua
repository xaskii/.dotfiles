return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "folke/snacks.nvim",
    ---@module 'snacks'
    ---@type snacks.Config
    opts = {
      dashboard = { enabled = false },
      notifier = { enabled = false },
      scroll = { enabled = false },
      indent = {
        indent = { char = "▏" },
        animate = { enabled = false },
        scope = { enabled = false, char = "▏" },
      },
    },
  },
  {
    "folke/which-key.nvim",
    ---@module 'which-key'
    ---@class wk.Config
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
    enabled = false,
    ---@module 'noice'
    ---@type NoiceConfig
    opts = {
      -- messages = { view_search = false },
      routes = {
        -- { filter = { event = "notify", find = "No information available" }, opts = { skip = true } }, -- needed when using 'notify'
      },
      cmdline = { view = "cmdline" },
      presets = {
        lsp_doc_border = true,
        command_palette = false,
      },
    },
  },
  {
    "hiphish/rainbow-delimiters.nvim",
    event = "BufReadPre",
  },
}
