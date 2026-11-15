-- Blink colorscheme
vim.api.nvim_set_hl( 0, 'blinkred',    { fg = "#ff4444" } )
vim.api.nvim_set_hl( 0, 'blinkorange', { fg = "#ee9933" } )
vim.api.nvim_set_hl( 0, 'blinkyellow', { fg = "#dddd88" } )
vim.api.nvim_set_hl( 0, 'blinkgreen',  { fg = "#77ee88" } )
vim.api.nvim_set_hl( 0, 'blinkblue',   { fg = "#5566ff" } )
vim.api.nvim_set_hl( 0, 'blinkmauve',  { fg = "#8844ff" } )
vim.api.nvim_set_hl( 0, 'blinkviolet', { fg = "#ff44cc" } )

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
    event = "BufReadPre",
    opts = {
      display = {
        mode = 'foreground'
      }
    }
  }
}
