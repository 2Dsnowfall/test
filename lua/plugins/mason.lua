return {
  {
    "mason-org/mason.nvim",
    opts = {
      firewall = {
        enabled = true
      },
      ui = {
        icons = {
          package_installed = "☑",
          package_pending = "➜",
          package_uninstalled = "☒"
        },
        border = {'┏','━','┓','┃','┛','━','┗','┃'},
      }
    }
  },
  {
    'mason-org/mason-lspconfig.nvim',
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig"
    },
    config = function()
      local blink_capabilities = require("blink.cmp").get_lsp_capabilities()
      vim.lsp.config("*", {
        capabilities = blink_capabilities,
      })

      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      })

      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "basedpyright",
        },
      })
    end,
  }
}
