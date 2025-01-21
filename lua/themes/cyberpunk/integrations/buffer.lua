local buffer = {
    BufferCurrent = { fg = C.off_white, bg = C.off_black },
    BufferCurrentIndex = { fg = C.off_white, bg = C.off_black },
    BufferCurrentMod = { fg = C.gold, bg = C.off_black },
    BufferCurrentSign = { fg = C.off_black, bg = C.red },
    BufferCurrentTarget = { fg = C.red, bg = C.off_black, style = "bold" },
    BufferVisible = { fg = C.grey, bg = C.off_black },
    BufferVisibleIndex = { fg = C.grey, bg = C.off_black },
    BufferVisibleMod = { fg = C.gold, bg = C.off_black },
    BufferVisibleSign = { fg = C.grey, bg = C.off_black },
    BufferVisibleTarget = { fg = C.red, bg = C.off_black, style = "bold" },
    BufferInactive = { fg = C.grey, bg = C.off_black },
    BufferInactiveIndex = { fg = C.grey, bg = C.off_black },
    BufferInactiveMod = { fg = C.gold, bg = C.off_black },
    BufferInactiveSign = { fg = C.dark_grey, bg = C.off_black },
    BufferInactiveTarget = { fg = C.grey, bg = C.off_black, style = "bold" },
  }

  return buffer

