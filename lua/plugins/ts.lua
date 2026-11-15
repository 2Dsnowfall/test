return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate'
  },
  {
    "romus204/tree-sitter-manager.nvim",
    dependencies = {
      'nvim-treesitter/nvim-treesitter'
    }, -- tree-sitter CLI must be installed system-wide
    opts = {
      auto_install = true,
      ensure_installed = {
        "python",
        "bash"
      }
    }
  }
}
