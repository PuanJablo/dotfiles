local Buffer = {
    BufferCurrent = { fg = C.off_white, bg = C.black },
    BufferCurrentIndex = { fg = C.off_white, bg = C.black },
    BufferCurrentMod = { fg = C.gold, bg = C.black },
    BufferCurrentSign = { fg = C.cyan, bg = C.black},
    BufferCurrentTarget = { fg = C.red, bg = C.black, style = "bold" },
    BufferVisible = { fg = C.grey, bg = C.black },
    BufferVisibleIndex = { fg = C.grey, bg = C.black },
    BufferVisibleMod = { fg = C.gold, bg = C.black },
    BufferVisibleSign = { fg = C.grey, bg = C.black },
    BufferVisibleTarget = { fg = C.red, bg = C.black, style = "bold" },
    BufferInactive = { fg = C.grey, bg = C.black },
    BufferInactiveIndex = { fg = C.grey, bg = C.black },
    BufferInactiveMod = { fg = C.gold, bg = C.black },
    BufferInactiveSign = { fg = C.dark_grey, bg = C.black },
    BufferInactiveTarget = { fg = C.grey, bg = C.black, style = "bold" },
  }
  
  return Buffer
  