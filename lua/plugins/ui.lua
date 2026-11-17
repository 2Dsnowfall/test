return {
  {
    'saghen/blink.pairs',
    dependencies = 'saghen/blink.lib',
    version = '*',
    build = function() require('blink.pairs').build():pwait(60000) end,
    --- @module 'blink.pairs'
    --- @type blink.pairs.config
    opts = {
      highlights = {
        groups = { 'blinkred', 'blinkorange', 'blinkyellow', 'blinkgreen', 'blinkblue', 'blinkmauve', 'blinkviolet' },
        unmatched_group = 'blinkpairsunmatched',
      },
    }
  },
  {
    'saghen/blink.indent',
    --- @module 'blink.indent',
    --- @type blink.indent.Config
    opts = {
      scope = {
        highlights = { 'blinkred', 'blinkorange', 'blinkyellow', 'blinkgreen', 'blinkblue', 'blinkmauve', 'blinkviolet' },
      }
    }
  },
  {
    "catgoose/nvim-colorizer.lua",
    opts = {
      options = {
        parsers = {
          names = { enable = false }
        },
        display = {
          mode = "virtualtext"
        }
      }
    }
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {}
  }
}
