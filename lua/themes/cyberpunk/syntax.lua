local M = {}

function M.get()
	return {
		Comment = { fg = C.dark_grey, style = O.styles.comments }, -- just comments
		SpecialComment = { link = "Special" }, -- special things inside a comment
		Constant = { fg = C.red }, -- (preferred) any constant
		String = { fg = C.red, style = O.styles.strings or {} }, -- a string constant: "this is a string"
		Character = { fg = C.gold }, --  a character constant: 'c', '\n'
		Number = { fg = C.cyan, style = O.styles.numbers or {} }, --   a number constant: 234, 0xff
		Float = { link = "Number" }, --    a floating point constant: 2.3e10
		Boolean = { fg = C.red, style = O.styles.booleans or {} }, --  a boolean constant: TRUE, false
		Identifier = { fg = C.red, style = O.styles.variables or {} }, -- (preferred) any variable name
		Function = { fg = C.red, style = O.styles.functions or {} }, -- function name (also: methods for classes)
		Statement = { fg = C.red }, -- (preferred) any statement
		Conditional = { fg = C.red, style = O.styles.conditionals or {} }, --  if, then, else, endif, switch, etc.
		Repeat = { fg = C.red, style = O.styles.loops or {} }, --   for, do, while, etc.
		Label = { fg = C.red }, --    case, default, etc.
		Operator = { fg = C.red, style = O.styles.operators or {} }, -- "sizeof", "+", "*", etc.
		Keyword = { fg = C.red, style = O.styles.keywords or {} }, --  any other keyword
		Exception = { fg = C.red, style = O.styles.keywords or {} }, --  try, catch, throw

		PreProc = { fg = C.red }, -- (preferred) generic Preprocessor
		Include = { fg = C.red, style = O.styles.keywords or {} }, --  preprocessor #include
		Define = { link = "PreProc" }, -- preprocessor #define
		Macro = { fg = C.red }, -- same as Define
		PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

		StorageClass = { fg = C.red }, -- static, register, volatile, etc.
		Structure = { fg = C.red }, --  struct, union, enum, etc.
		Special = { fg = C.red }, -- (preferred) any special symbol
		Type = { fg = C.red, style = O.styles.types or {} }, -- (preferred) int, long, char, etc.
		Typedef = { link = "Type" }, --  A typedef
		SpecialChar = { link = "Special" }, -- special character in a constant
		Tag = { fg = C.red, style = { "bold" } }, -- you can use CTRL-] on this
		Delimiter = { fg = C.cyan }, -- character that needs attention
		Debug = { link = "Special" }, -- debugging statements

		Underlined = { style = { "underline" } }, -- (preferred) text that stands out, HTML links
		Bold = { style = { "bold" } },
		Italic = { style = { "italic" } },
		-- ("Ignore", below, may be invisible...)
		-- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error = { fg = C.red }, -- (preferred) any erroneous construct
		Todo = { bg = C.gold, fg = C.black, style = { "bold" } }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		qfLineNr = { fg = C.gold },
		qfFileName = { fg = C.cyan },
		htmlH1 = { fg = C.red, style = { "bold" } },
		htmlH2 = { fg = C.red, style = { "bold" } },
		-- mkdHeading = { fg = C.peach, style = { "bold" } },
		-- mkdCode = { bg = C.terminal_black, fg = C.text },
		mkdCodeDelimiter = { bg = C.black, fg = C.off_white },
		mkdCodeStart = { fg = C.red, style = { "bold" } },
		mkdCodeEnd = { fg = C.red, style = { "bold" } },
		-- mkdLink = { fg = C.blue, style = { "underline" } },

		-- debugging
		debugPC = { bg = O.transparent_background and C.black }, -- used for highlighting the current line in terminal-debug
		debugBreakpoint = { bg = C.red, fg = C.black }, -- used for breakpoint colors in terminal-debug
		-- illuminate
		illuminatedWord = { bg = C.white },
		illuminatedCurWord = { bg = C.white },
		-- diff
		diffAdded = { fg = C.green },
		diffRemoved = { fg = C.dark_red },
		diffChanged = { fg = C.teal2 },
		diffOldFile = { fg = C.dark_gold },
		diffNewFile = { fg = C.green },
		diffFile = { fg = C.dark_red },
		diffLine = { fg = C.green },
		diffIndexLine = { fg = C.off_white },
		DiffAdd = { bg = U.darken(C.green, 0.18, C.base) }, -- diff mode: Added line |diff.txt|
		DiffChange = { bg = U.darken(C.dark_green, 0.07, C.base) }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { bg = U.darken(C.dark_red, 0.18, C.base) }, -- diff mode: Deleted line |diff.txt|
		DiffText = { bg = U.darken(C.dark_green, 0.30, C.base) }, -- diff mode: Changed text within a changed line |diff.txt|
		-- NeoVim
		healthError = { fg = C.red },
		healthSuccess = { fg = C.green },
		healthWarning = { fg = C.gold },
		-- misc

		-- glyphs
		GlyphPalette1 = { fg = C.red },
		GlyphPalette2 = { fg = C.teal },
		GlyphPalette3 = { fg = C.gold },
		GlyphPalette4 = { fg = C.green },
		GlyphPalette6 = { fg = C.teal2 },
		GlyphPalette7 = { fg = C.off_white },
		GlyphPalette9 = { fg = C.red },

		-- rainbow
		rainbow1 = { fg = C.red },
		rainbow2 = { fg = C.dark_red },
		rainbow3 = { fg = C.gold },
		rainbow4 = { fg = C.dark_gold },
		rainbow5 = { fg = C.off_white },
		rainbow6 = { fg = C.white },

		-- csv
		csvCol0 = { fg = C.red },
		csvCol1 = { fg = C.off_white },
		csvCol2 = { fg = C.off_white },
		csvCol3 = { fg = C.off_white },
		csvCol4 = { fg = C.off_white },
		csvCol5 = { fg = C.off_white },
		csvCol6 = { fg = C.off_white },
		csvCol7 = { fg = C.off_white },
		csvCol8 = { fg = C.off_white },
	}
end

return M
