return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- enabled = false,
    opts = {
      filesystem = {
        hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
        filtered_items = {
          hide_dotfiles = false,
          hide_by_name = {
            "node_modules",
            ".git"
          },
        },
      },
    },
  },
  {
    "s1n7ax/nvim-window-picker",
    config = function()
      require("window-picker").setup()
    end,
  },
}
