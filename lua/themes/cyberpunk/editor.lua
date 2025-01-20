local M = {}

function M.get()
	return {
		ColorColumn = { bg = C.black }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = C.dark_grey }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = C.black, bg = C.off_white }, -- character under the cursor
		lCursor = { fg = C.black, bg = C.off_white }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = C.black, bg = C.off_white }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = C.white }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine = {
			bg = U.vary_color({ latte = U.lighten(C.mantle, 0.70, C.base) }, U.darken(C.surface0, 0.64, C.base)),
		}, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if forecrust (ctermfg OR guifg) is not set.
		Directory = { fg = C.off_white }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = O.show_end_of_buffer and C.black }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg = { fg = C.red, style = { "bold", "italic" } }, -- error messages on the command line
		VertSplit = { fg = O.transparent_background and C.white }, -- the column separating vertically split windows
		Folded = { fg = C.blue, bg = O.transparent_background and C.black }, -- line used for closed folds
		FoldColumn = { fg = C.ghost_white }, -- 'foldcolumn'
		SignColumn = { fg = C.ghost_white }, -- column where |signs| are displayed
		SignColumnSB = { bg = C.black, fg = C.off_white }, -- column where |signs| are displayed
		Substitute = { bg = C.surface1, fg = U.vary_color({ latte = C.red }, C.pink) }, -- |:substitute| replacement text highlighting
		LineNr = { fg = C.surface1 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr = { fg = C.lavender }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
		MatchParen = { fg = C.red, bg = C.black, style = { "bold" } }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = C.off_white, style = { "bold" } }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea = { fg = C.text }, -- Area for messages and cmdline, don't set this highlight because of https://github.com/neovim/neovim/issues/17832
		MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = C.off_white }, -- |more-prompt|
		NonText = { fg = C.off_white }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = C.off_white, bg = O.transparent_background and C.none or C.black }, -- normal text
		NormalNC = {
			fg = C.off_white,
			bg = (O.transparent_background and O.dim_inactive.enabled and C.dim)
				or (O.dim_inactive.enabled and C.dim)
				or (O.transparent_background and C.none)
				or C.black,
		}, -- normal text in non-current windows
		NormalSB = { fg = C.off_white, bg = C.black }, -- normal text in non-current windows
		NormalFloat = { fg = C.off_white, bg = (O.transparent_background and vim.o.winblend == 0) and C.none or C.black }, -- Normal text in floating windows.
		FloatBorder = { fg = C.red },
		FloatTitle = { fg = C.off_white }, -- Title of floating windows
		Pmenu = {
			bg = (O.transparent_background and vim.o.pumblend == 0) and C.none or U.darken(C.dark_grey, 0.8, C.black),
			fg = C.off_white,
		}, -- Popup menu: normal item.
		PmenuSel = { bg = C.dark_grey, style = { "bold" } }, -- Popup menu: selected item.
		PmenuSbar = { bg = C.off_white }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = C.gold }, -- Popup menu: Thumb of the scrollbar.
		Question = { fg = C.cyan }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = C.dark_grey, style = { "bold" } }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { bg = U.darken(C.dark_grey, 0.30, C.black), fg = C.off_white }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		IncSearch = { bg = U.darken(C.dark_grey, 0.90, C.black), fg = C.off_white }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		CurSearch = { bg = C.dark_grey, fg = C.off_white }, -- 'cursearch' highlighting: highlights the current search you're on differently
		SpecialKey = { link = "NonText" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
		SpellBad = { sp = C.red, style = { "undercurl" } }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { sp = C.gold, style = { "undercurl" } }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { sp = C.cyan, style = { "undercurl" } }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { sp = C.green, style = { "undercurl" } }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = C.off_white, bg = O.transparent_background and C.none or C.black }, -- status line of current window
		StatusLineNC = { fg = C.ghost_white, bg = O.transparent_background and C.none or C.black }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = C.black, fg = C.off_white }, -- tab pages line, not active tab page label
		TabLineFill = { bg = O.transparent_background and C.none or C.black }, -- tab pages line, where there are no labels
		TabLineSel = { link = "Normal" }, -- tab pages line, active tab page label
		TermCursor = { fg = C.black, bg = C.off_white }, -- cursor in a focused terminal
		TermCursorNC = { fg = C.black, bg = C.ghost_white }, -- cursor in unfocused terminals
		Title = { fg = C.off_white, style = { "bold" } }, -- titles for output from ":set all", ":autocmd" etc.
		Visual = { bg = C.off_white, style = { "bold" } }, -- Visual mode selection
		VisualNOS = { bg = C.off_white, style = { "bold" } }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = C.gold }, -- warning messages
		Whitespace = { fg = C.off_white }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = C.ghost_white }, -- current match in 'wildmenu' completion
		WinBar = { fg = C.red },
		WinBarNC = { link = "WinBar" },
		WinSeparator = { fg = O.transparent_background and C.black },
	}
end

return M