return {
  {
    "nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "<leader>cL", "<cmd>LspRestart<CR>", desc = "Lsp Restart" }
    end,
    ---@class PluginLspOpts
    opts = {
      autoformat = false,
      inlay_hints = { enabled = false },
      -- servers = {
      --   eslint = {
      --     settings = {
      --       -- helps eslint find the eslintrc when it's placed in a subfolder instead of the cwd root
      --       workingDirectory = { mode = "auto" },
      --     },
      --   },
      -- },
      -- setup = {
      --   eslint = function()
      --     require("lazyvim.util").lsp.on_attach(function(client)
      --       if client.name == "eslint" then
      --         client.server_capabilities.documentFormattingProvider = true
      --       elseif client.name == "tsserver" then
      --         client.server_capabilities.documentFormattingProvider = false
      --       end
      --     end)
      --     vim.api.nvim_create_autocmd("BufWritePre", {
      --       callback = function(event)
      --         if not require("lazyvim.plugins.lsp.format").enabled() then
      --           -- exit early if autoformat is not enabled
      --           return
      --         end
      --
      --         local client = vim.lsp.get_active_clients({ bufnr = event.buf, name = "eslint" })[1]
      --         if client then
      --           local diag = vim.diagnostic.get(event.buf, { namespace = vim.lsp.diagnostic.get_namespace(client.id) })
      --           if #diag > 0 then
      --             vim.cmd("EslintFixAll")
      --           end
      --         end
      --       end,
      --     })
      --   end,
      -- },
    },
  },
}
