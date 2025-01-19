return {
  {
      "lewis6991/gitsigns.nvim",
      config = function()
          local gitsigns = require("gitsigns")
    
          local keymap = vim.keymap -- for conciseness
    
          gitsigns.setup()
    
          keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
          keymap.set("n", "<leader>gb", ":Gitsings toggle_current_line_blame<CR>", {})
      end
  },
  {
    "tpope/vim-fugitive"
  }
}