vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
	vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "cyberpunk"

local util = require("util")
Config = require("cyberpunk.config")
C = require("cyberpunk.palette")
local highlights = require("cyberpunk.highlights")
local treesitter = require("cyberpunk.integrations.treesitter")
local markdown = require("cyberpunk.integrations.markdown")
local which_key = require("cyberpunk.integrations.which_key")
local git = require("cyberpunk.integrations.git")
local lsp = require("cyberpunk.integrations.lsp")
local quick_scope = require("cyberpunk.integrations.quickscope")
local telescope = require("cyberpunk.integrations.telescope")
local nvim_tree = require("cyberpunk.integrations.n_tree")
local lir = require("cyberpunk.integrations.lir")
local buffer = require("cyberpunk.integrations.buffer")
local status_line = require("cyberpunk.integrations.status_line")
local indent_blankline = require("cyberpunk.integrations.indent_blankline")
local dashboard = require("cyberpunk.integrations.dashboard")
local diff_view = require("cyberpunk.integrations.diff_view")
local bqf = require("cyberpunk.integrations.bqf")
local cmp = require("cyberpunk.integrations.cmp")
local symbol_outline = require("cyberpunk.integrations.symbol_outline")
local misc = require("cyberpunk.integrations.misc")

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