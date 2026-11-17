local border = {'╭','─','╮','│','╯','─','╰','│'}
return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config

  opts = {
    keymap = {
      preset = "default",
      ['<C-e>'] = false,
      ['<C-n>'] = false,
      ['<C-p>'] = false,
      ['<C-j>'] = { "select_next", "fallback" },
      ['<C-k>'] = { "select_prev", "fallback" },
      ['<CR>'] = { "accept", "fallback" },

    },
    appearance = { nerd_font_variant = 'mono' },
    completion = {
      menu = {
        border = border,
        auto_show_delay_ms = 500,
      },
      documentation = {
        window = { border = border },
        auto_show = true,
      }
    },
    signature = { window = { border = border } },
    sources = { default = { 'lsp', 'path', 'snippets', 'buffer' }},
    fuzzy = { implementation = "prefer_rust_with_warning" }

  }

}
