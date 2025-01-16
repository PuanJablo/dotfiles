return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },  
  dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      { "anthosha417/nvim-lsp-file-operations", config = true },
  },
  config = function()
    -- import lspconfig plugin
    local lspconfig = require("lspconfig")

    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local keymap = vim.keymap -- for conciseness

    local opts = { noremap = true, silent = true }

    local on_attach = function(client, bufnr)
      opts.buffer = bufnr

      -- set keybinds
      opts.desc = "Show LSP references"
      keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

      opts.desc = "Go to declarations"
      keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to decleration

      opts.desc = "Show LSP definitions"
      keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions

      opts.desc = "Show LSP references"
      keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

      opts.desc = "Show LSP Type definitions"
      keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

      opts.desc = "See available code actions"
      keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply

      opts.desc = "Smart rename"
      keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

      opts.desc = "Show buffer diagnostics"
      keymap.set("n", "<leader>d", vim.diagnostic.open_flat, opts) -- show diagnostics for line

      opts.desc = "Go to previous diagnostic"
      keymap.set("n", "vim.diagnostic.goto_prev", opts) -- jump to next diagnostic in buffer

      opts.desc = "Show documentation for what is under cursor"
      keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

      opts.desc = "Restart LSP"
      keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
    end

    -- used to enable auto-completion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Change the Diagnosic symbols in the sign column (gutter)
    -- (not in youtube nvim video)
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = ""})
    end

    -- Add ont here when you want to add more LSPs in the future 

    -- Markdown LSP
    lspconfig["markdown_oxide"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- cland lsp server config
    lspconfig["clang"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- rust-analyzer
    lspconfig["rust_analyzer"].setup({
      capabilities = capabilities,
      on_attach = on_attach, 
    })

    -- lua language server
    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        Lua = {
          -- make the language server recognize "vim" global
          diagnostic = {
            globals = { "vim" },
          },
          workspace = {
            -- make language server aware of runtime files
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config").."/lua"] = true,
            },
          },
        },
      },
    })

  end, 
}