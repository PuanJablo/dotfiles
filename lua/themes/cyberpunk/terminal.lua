local M = {}

function M.get()
	return {
		terminal_color_0 = C.off_white,
		terminal_color_8 = C.ghost_white,

		terminal_color_1 = C.red,
		terminal_color_9 = C.dark_red,

		terminal_color_2 = C.green,
		terminal_color_10 = C.dark_green,

		terminal_color_3 = C.gold,
		terminal_color_11 = C.dark_gold,

		terminal_color_4 = C.cyan,
		terminal_color_12 = C.teal2,

		terminal_color_5 = C.grey,
		terminal_color_13 = C.dark_grey,

		terminal_color_6 = C.black,
		terminal_color_14 = C.burgundy,

		terminal_color_7 = C.white,
		terminal_color_15 = C.off_white,
	}
end

return M
