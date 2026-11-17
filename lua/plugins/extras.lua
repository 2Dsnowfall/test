return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim"
    },
    keys = {
      { "<leader>e", "<Cmd>Neotree toggle<CR>", desc = "Toggle Neo-Tree" },
    },
    opts = {}
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      open_mapping = [[<c-\>]],
      direction = "horizontal",
      shell = "/usr/bin/fish",
    }
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {}
  }
}

