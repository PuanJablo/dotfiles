vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
	vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "cyberpunk"

local util = require("themes.cyberpunk.util")
Config = require("themes.cyberpunk.config")
C = require("themes.cyberpunk.palette")
local highlights = require("themes.cyberpunk.highlights")
local treesitter = require("themes.cyberpunk.integrations.treesitter")
local markdown = require("themes.cyberpunk.integrations.markdown")
local which_key = require("themes.cyberpunk.integrations.which_key")
local git = require("themes.cyberpunk.integrations.git")
local lsp = require("themes.cyberpunk.integrations.lsp")
local quick_scope = require("themes.cyberpunk.integrations.quickscope")
local telescope = require("themes.cyberpunk.integrations.telescope")
local nvim_tree = require("themes.cyberpunk.integrations.n_tree")
local lir = require("themes.cyberpunk.integrations.lir")
local buffer = require("themes.cyberpunk.integrations.buffer")
local status_line = require("themes.cyberpunk.integrations.status_line")
local indent_blankline = require("themes.cyberpunk.integrations.indent_blankline")
local dashboard = require("themes.cyberpunk.integrations.dashboard")
local diff_view = require("themes.cyberpunk.integrations.diff_view")
local bqf = require("themes.cyberpunk.integrations.bqf")
local cmp = require("themes.cyberpunk.integrations.cmp")
local symbol_outline = require("themes.cyberpunk.integrations.symbol_outline")
local misc = require("themes.cyberpunk.integrations.misc")

local skeletons = {
	highlights,
	treesitter,
	markdown,
	which_key,
	git,
	lsp,
	quick_scope,
	telescope,
	nvim_tree,
	lir,
	buffer,
	status_line,
	indent_blankline,
	dashboard,
	diff_view,
	bqf,
	cmp,
	symbol_outline,
	misc,
}

for _, skeleton in ipairs(skeletons) do
	util.initialise(skeleton)
end