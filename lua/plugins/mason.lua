return {
  {
    "mason-org/mason.nvim",
    opts = {
      firewall = {
        enabled = true
      },
      ui = {
        icons = {
          package_installed = "🗹",
          package_pending = "➜",
          package_uninstalled = "🗷"
        },
        border = { '┏', '━', '┓', '┃', '┛', '━', '┗', '┃' },
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
            diagnostics = {
              globals = { "vim" }
            },
          },
        },
      })
      vim.lsp.config("basedpyright", {
        settings = {
          basedpyright = {
            analysis = {
              typeCheckingMode = "standard",
              autoImportCompletions = true,
              diagnosticMode = "workspace",
              inlayHints = {
                variableTypes = true,
                callArgumentNames = true,
              },
            },
          },
        },
      })
      vim.lsp.config("ruff", {
        init_options = {
          settings = {
            logLevel = "error",
          },
        },
      })
      require("mason-lspconfig").setup()
    end,
  },
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {
        python = {
          "ruff_fix",
          "ruff_format",
          "ruff_organize_imports"
        },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback"
      }
    }
  },
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    opts = {
      ensure_installed = {
        "lua_ls",
        "basedpyright",
        "ruff",
        "debugpy",
        "mypy",
        "pylint",
        "black"
      },
      auto_update = true,
      run_on_start = true,
      debounce_hours = 2,
      integrations = {
        ['mason-lspconfig'] = true
      }
    }
  }
}
