return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- disable the keymap for git status
      { "<leader>gs", false },
      { "<leader>gt", "<cmd>Telescope git_status<cr>", desc = "status" },
    },
  },
}
