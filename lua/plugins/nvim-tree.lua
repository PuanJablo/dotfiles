return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    local nvimtree = require("nvim-tree")
    
    vim.g.loaded = 1
    vimg.g.loaded_newtrwPlugin = 1

    vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

    nvimtree.setup({
      renderer = {
       icons = {
         glyphs = {
           folder = {
            arrow_closed = "", -- arrow when folder is closed
            arrow_open = "", -- arrow when folder is open
           },
         },
       },
       actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
       }
      },
   })
  end
}