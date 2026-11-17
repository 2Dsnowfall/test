-- Blink colorscheme
vim.api.nvim_set_hl( 0, 'blinkred',    { fg = "#ff8888" } )
vim.api.nvim_set_hl( 0, 'blinkorange', { fg = "#ffbb88" } )
vim.api.nvim_set_hl( 0, 'blinkyellow', { fg = "#ffff88" } )
vim.api.nvim_set_hl( 0, 'blinkgreen',  { fg = "#88ff88" } )
vim.api.nvim_set_hl( 0, 'blinkblue',   { fg = "#6688ff" } )
vim.api.nvim_set_hl( 0, 'blinkmauve',  { fg = "#aa77ff" } )
vim.api.nvim_set_hl( 0, 'blinkviolet', { fg = "#ff99ff" } )

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
        groups = { 'blinkred', 'blinkorange', 'blinkyellow', 'blinkgreen', 'blinkblue', 'blinkmauve', 'blinkviolet'  },
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
