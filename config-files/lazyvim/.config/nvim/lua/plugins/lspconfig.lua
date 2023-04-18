return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      autoformat = false,
    },
  },
  { import = "lazyvim.plugins.extras.lang.typescript" },
}
