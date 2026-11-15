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
        groups = { 'blinkpairsred', 'blinkpairsorange', 'blinkpairsyellow', 'blinkpairsgreen', 'blinkpairsblue', 'blinkpairsmauve', 'blinkpairsviolet'  },
        unmatched_group = 'blinkpairsunmatched',
        vim.api.nvim_set_hl( 0, 'blinkpairsred',    { fg = "#ff3333" } ),
        vim.api.nvim_set_hl( 0, 'blinkpairsorange', { fg = "#ffaa55" } ),
        vim.api.nvim_set_hl( 0, 'blinkpairsyellow', { fg = "#ffff88" } ),
        vim.api.nvim_set_hl( 0, 'blinkpairsgreen',  { fg = "#88ff88" } ),
        vim.api.nvim_set_hl( 0, 'blinkpairsblue',   { fg = "#5566ff" } ),
        vim.api.nvim_set_hl( 0, 'blinkpairsmauve',  { fg = "#8844ff" } ),
        vim.api.nvim_set_hl( 0, 'blinkpairsviolet', { fg = "#ff44cc" } ),
      },
    }
  },
  {
    'saghen/blink.indent',
    --- @module 'blink.indent',
    --- @type blink.indent.Config
    opts = {
      scope = {
        highlights = { 'blinkpairsred', 'blinkpairsorange', 'blinkpairsyellow', 'blinkpairsgreen', 'blinkpairsblue', 'blinkpairsmauve', 'blinkpairsviolet' },
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
