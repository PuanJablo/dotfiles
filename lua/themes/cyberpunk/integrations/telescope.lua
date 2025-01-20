local telescope = {
    TelescopeSelection = { fg = C.red },
    TelescopeMatching = { fg = C.red, style = "bold" },
    TelescopeBorder = { fg = C.red, bg = Config.transparent_background and "NONE" or C.black },
  }
  
  return telescope