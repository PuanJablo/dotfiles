return {
  {
    "jayp0521/mason-null-ls.nvim",
    config = function()
      -- import mason-null-ls
      local mason_null_ls = require("mason-null-ls")

      -- install linters & formatters
      mason_null_ls.setup({
        ensure_installed = {
          "prettier",
          "stylua",
          "eslint_d",
        }
      })
    end
  },
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      -- import mason
      local mason = require("mason")

      -- import mason-lspconfig
      local mason_lspconfig = require("mason-lspconfig")

      -- enable mason and configure icons
      mason.setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "→",
            package_uninstalled = "✗"
          }
        }
      })

      -- install lsp
      mason_lspconfig.setup({
        -- list of servers for mason to install
        ensure_installed = {
          "markdown_oxide",
          "lua_ls",
          "clangd"
          "rust_analyzer",
          "gopls",
          "bashls"
        },

        -- auto-install configured servers (with lspconfig)
        automatic_installation = true, -- not the same as ensure_installed
      })
    end,
  }
}