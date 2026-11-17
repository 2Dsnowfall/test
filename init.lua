--== STANDARD CONFIGS==--
require('config.colorscheme')
require('config.editor')
require('config.diagnostics')
require('config.keymaps')

---=== PLUGIN INIT ===---
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.equire('config.colorscheme')
require('init.lazy')

--== PLUNGIN CONFIGS ==--
