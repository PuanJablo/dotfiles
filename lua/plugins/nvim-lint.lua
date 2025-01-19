return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    null_ls.setup({
      sources = {
        formatting.prettier,
        formatting.stylua,
        diagnositcs.eslint_d
      },

      on_attach = function(current_client, bufnr)
        if current_client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocms({ group - augroup, buffer = bufnr })
          vim.api.nvim_creat_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({
                filter = function(client)
                  -- only use null-ls for formatting instead of lsp server
                  return client.name == "null-ls"
                end,
              })
            end,
          })
      end
    })
  end
}